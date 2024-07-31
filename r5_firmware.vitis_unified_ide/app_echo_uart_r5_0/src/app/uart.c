/*
    uart.c
    author: sh-goto
    description:
        この UART ドライバは、以下の要素で構成されています。
        This UART driver consists of the following elements.

                                 "uart_send_buf"
        <Some application task> ---------------> <UART TX Task> ==> (AXI-UARTLite TX)

                                 "uart_recv_buf"
        <Some application task> <--------------- <UART RX Task> <-- (AXI-UARTLite RX)

            Figure legend:
                    (Name) : Hardware IP
                    <Name> : Task
                    -->  : FreeRTOS StreamBuffer
                    ==>  : Data Buffer
    
        データ送信にはストリームバッファ(uart_send_buf)を使用します.
        また、データ受信にはストリームバッファ(uart_recv_buf)を使用します.
        A stream buffer (uart_send_buf) is used to send data. 
        A stream buffer (uart_recv_buf) is used to receive data.

        Note: 
            UARTLiteのハードウェア受信FIFOのバッファオーバーフロー検知に
            LED制御APIを使用しています。不要であればコメントアウトしてください。
        Note:
            LED control API is used for buffer overflow detection
            in the hardware receive FIFO of UARTLite. Comment out if not needed.

*/

/* FreeRTOS */
#include "FreeRTOS.h"
#include "task.h"
#include "stream_buffer.h"

/* AMD */
#include "xil_printf.h"
#include "xparameters.h"
#include "xuartlite.h"
#include "xuartlite_l.h"
#include "xscugic.h"
#include "xinterrupt_wrap.h"

/* App */
#include <stdint.h>
#include "user_def.h"
#include "hardware_def.h"
#include "led.h"
#include "uart.h"

/*
    このコードはXilinx Baremetal driver(SDT対応版)を使用しています.
    Vitis Unified IDE 環境でのみ使用できます.
    SDT:System Device Tree
    Vitis Unified IDE:(v2023.2以降)

    This code uses the Xilinx Baremetal driver (SDT-compatible version).
    It can only be used in the Vitis Unified IDE environment.
    SDT:System Device Tree
    Vitis Unified IDE:(v2023.2 or later)
*/
#ifndef SDT
#error "Error:This code uses the Xilinx Baremetal driver (SDT-compatible version).\
It can only be used in the Vitis Unified IDE environment."
#endif

/* Task and ISR Handler */
static void UartSendTask( void *pvParameters );
static void UartRecvTask( void *pvParameters );
static TaskHandle_t uart_send_task;
static TaskHandle_t uart_recv_task;

static void SendCBHandler(void *CallBackRef, unsigned int EventData);
static void RecvCBHandler(void *CallBackRef, unsigned int EventData);

/* Public stream buffer */
StreamBufferHandle_t uart_send_buf = NULL;
StreamBufferHandle_t uart_recv_buf = NULL;
#define UART_TX_STRM_BUF_SIZE_BYTES (size_t)128U
#define UART_TX_STRM_BUF_TRIG_BYTES (size_t)1U
#define UART_RX_STRM_BUF_SIZE_BYTES (size_t)128U
#define UART_RX_STRM_BUF_TRIG_BYTES (size_t)1U

/* Stream buffer used in private */
static StreamBufferHandle_t uart_isr_input_buf = NULL;
#define UART_ISR_STRM_BUF_SIZE_BYTES (size_t)256U
#define UART_ISR_STRM_BUF_TRIG_BYTES (size_t)1U

/* AXI-UARTLite */
static XUartLite dev_uart;
#define UART_TX_DRV_BUF_SIZE_BYTES (size_t)32U
#define UART_RX_DRV_BUF_SIZE_BYTES (size_t)32U
static uint8_t uart_tx_driver_buf[UART_TX_DRV_BUF_SIZE_BYTES];
static uint8_t uart_rx_driver_buf[UART_RX_DRV_BUF_SIZE_BYTES];

/* Alert LEDs API */
#define ENABLE_LED_4_UART_HW_RX_FIFO_FULL(...) LedOn()



eErr_t InitUart(void)
{
    int ret;
    XUartLite_Config *CfgPtr;

    /* Init RTOS Obj */
    uart_send_buf      = xStreamBufferCreate(UART_TX_STRM_BUF_SIZE_BYTES, UART_TX_STRM_BUF_TRIG_BYTES);
    uart_recv_buf      = xStreamBufferCreate(UART_RX_STRM_BUF_SIZE_BYTES, UART_RX_STRM_BUF_TRIG_BYTES);
    uart_isr_input_buf = xStreamBufferCreate(UART_ISR_STRM_BUF_SIZE_BYTES, UART_ISR_STRM_BUF_TRIG_BYTES);
    if( uart_send_buf == NULL ||
        uart_recv_buf == NULL ||
        uart_isr_input_buf == NULL )
    {
        xil_printf( "Err:Init StreamBuffer Failure.\n" );
        configASSERT(FALSE);
    }

    /* Init AXI-UARTLite driver */
    CfgPtr = XUartLite_LookupConfig(UART_BASEADDR);
    ret = XUartLite_Initialize(&dev_uart, UART_BASEADDR);
    if(ret != XST_SUCCESS){
        xil_printf( "Initialization of UARTLite failed.\n" );
        return eFAILURE;
    }

    ret = XUartLite_SelfTest(&dev_uart);
    if(ret != XST_SUCCESS){
        xil_printf( "SelfTest of UARTLite failed.\n" );
        return eFAILURE;
    }else{
        XUartLite_ResetFifos(&dev_uart);
    }

    ret = XSetupInterruptSystem(&dev_uart, 
                                &XUartLite_InterruptHandler,
				                CfgPtr->IntrId, 
                                CfgPtr->IntrParent,
				                XINTERRUPT_DEFAULT_PRIORITY);
    if(ret != XST_SUCCESS){
        xil_printf( "Setup GIC for UARTLite failed.\n" );
        return eFAILURE;
    }

    XUartLite_SetSendHandler(&dev_uart, SendCBHandler, &dev_uart);
	XUartLite_SetRecvHandler(&dev_uart, RecvCBHandler, &dev_uart);

    /* Init Tasks */
    ret = xTaskCreate(  UartSendTask,
				        ( const char * ) "UartTx",
					    (configMINIMAL_STACK_SIZE + 400),
					    NULL,
					    TSK_TSK_PRIORITY_UART_SEND,
					    &uart_send_task );
    if(ret != pdPASS){
        xil_printf( "Create UARTSendTask of UARTLite failed.\n" );
        return eFAILURE;
    }

    ret = xTaskCreate(  UartRecvTask,
				        ( const char * ) "UartRx",
					    (configMINIMAL_STACK_SIZE + 400),
					    NULL,
					    TSK_TSK_PRIORITY_UART_RECV,
					    &uart_recv_task );
    if(ret != pdPASS){
        xil_printf( "Create UARTRecvTask of UARTLite failed.\n" );
        return eFAILURE;
    }

    XUartLite_EnableInterrupt(&dev_uart);

    return eSUCCESS;
}


static void UartSendTask( void *pvParameters )
{
    size_t get_bytes_cnt = 0;
    uint32_t buf_cnt = 0;

    memset(uart_tx_driver_buf, 0x00, sizeof(uart_tx_driver_buf));

    xil_printf( "Info: Run Uart Send Task.\n" );

    for (;;)
    {
        get_bytes_cnt = xStreamBufferReceive(uart_send_buf,
                                            (void*)uart_tx_driver_buf,
                                            sizeof(uart_tx_driver_buf),
                                            50/ portTICK_PERIOD_MS);

        if(get_bytes_cnt > 0)
        {
            while(buf_cnt != get_bytes_cnt)
            {
                if(XUartLite_IsTransmitFull(dev_uart.RegBaseAddress) == FALSE)
                {
                    /*
                        ハードウェア送信FIFOがフルでない場合は、
                        送信レジスタにデータを書き込みます.
                        If the hardware transmit FIFO is not full,
                        write data to the transmit register.
                    */
                    XUartLite_WriteReg(dev_uart.RegBaseAddress,
                                        XUL_TX_FIFO_OFFSET,
                                        uart_tx_driver_buf[buf_cnt]);
                    buf_cnt++;
                }else {
                    /*
                        ハードウェア送信FIFOのバッファがフルのため、
                        ハードウェア送信FIFOのバッファ空割込みが
                        発生するまで待ちます.
                        Wait until a hardware transmit FIFO buffer empty
                        interrupt occurs because the hardware transmit
                        FIFO buffer is full.
                    */
                    ulTaskNotifyTake( pdTRUE, 10/ portTICK_PERIOD_MS );
                }
            }
            
            buf_cnt = 0;
        }
    }
}


static void SendCBHandler(void *CallBackRef, unsigned int EventData)
{
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    XUartLite* device = CallBackRef;

    if(device->RegBaseAddress == dev_uart.RegBaseAddress)
    {
        /*
            ハードウェア送信FIFOのバッファ空割込みが発生したため、
            送信タスクに起動通知をします.
            A buffer empty interrupt in the hardware transmit FIFO
            has occurred, and the transmit task is notified
            of the startup.
        */
        vTaskNotifyGiveFromISR(uart_send_task, &xHigherPriorityTaskWoken);
        portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
    }
}


static void UartRecvTask( void *pvParameters )
{
    size_t get_bytes_cnt = 0;
    size_t tx_bytes_cnt = 0;

    memset(uart_rx_driver_buf, 0x00, sizeof(uart_rx_driver_buf));

    xil_printf( "Info: Run Uart Recv Task.\n" );

    for(;;)
    {
        get_bytes_cnt = xStreamBufferReceive(   uart_isr_input_buf,
                                                uart_rx_driver_buf,
                                                sizeof(uart_rx_driver_buf),
                                                10/ portTICK_PERIOD_MS);
        if(get_bytes_cnt > 0)
        {
            tx_bytes_cnt = xStreamBufferSend(   uart_recv_buf,
                                                uart_rx_driver_buf,
                                                get_bytes_cnt,
                                                50/ portTICK_PERIOD_MS);
            if(tx_bytes_cnt != get_bytes_cnt)
            {
                xil_printf("uart_recv_buf filled.\n");
            }
        }
    }
}


static void RecvCBHandler(void *CallBackRef, unsigned int EventData)
{
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    XUartLite* device = CallBackRef;
    uint8_t rx_buf;
    uint32_t state;
    size_t data_size;

    if(device->RegBaseAddress == dev_uart.RegBaseAddress)
    {
        while(XUartLite_IsReceiveEmpty(device->RegBaseAddress) == FALSE)
        {
            state = XUartLite_GetStatusReg(device->RegBaseAddress);
            state = state & XUL_SR_RX_FIFO_FULL;
            if(state == XUL_SR_RX_FIFO_FULL)
            {
                /*
                    AXI-UARTLiteには16byteのハードウェア受信FIFOがあり、
                    FIFOがバッファフルになったことを検知しました.
                    データロスが発生している可能性があります.
                    AXI-UARTLite has 16bytes hardware receive FIFOs and
                    it was detected that the FIFOs are buffered full.
                    Data loss may have occurred.

                    Note: xli_printf()はブロッキング処理するため、
                    処理に時間がかかることに注意が必要です。
                    Note: Note that xli_printf() takes a long time
                    to process because of blocking processing.
                */
                ENABLE_LED_4_UART_HW_RX_FIFO_FULL();
                //xil_printf("UARTLite RX Hardware buffer full.\n");
            }

            /*
                受信バッファレジスタからデータを読み出します.
                Reads data from the receive buffer register.
            */
            rx_buf = XUartLite_ReadReg(device->RegBaseAddress, XUL_RX_FIFO_OFFSET);

            data_size = xStreamBufferSendFromISR(uart_isr_input_buf,
                                                &rx_buf,
                                                sizeof(rx_buf),
                                                &xHigherPriorityTaskWoken);
            if(data_size == 0)
            {
                /*
                    受信ストリームバッファフルになったことを検知しました.
                    送出できません.
                    Receive StreamBuffer full detected. Cannot send out.

                    Note: xli_printf()はブロッキング処理するため、
                    処理に時間がかかることに注意が必要です。
                    Note: Note that xli_printf() takes a long time
                    to process because of blocking processing.
                */
                //LedOn();
                xil_printf("uart_recv_buf filled.\n");
            }
        }
        portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
    }
}

