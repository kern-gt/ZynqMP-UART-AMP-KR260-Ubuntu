/*
    main.c
    author: sh-goto
    description:
        AXI-UARTLite IPを用いたコア間通信(AMP)のデモです。
        Demonstration of core-to-core communication (AMP) 
        using AXI-UARTLite IP.

        * Linux(CA53) <-> CR5 0 core(With FreeRTOS)
        * Linux(CA53) <-> CR5 1 core(With FreeRTOS)
        * Linux(CA53) <-> MicroBlaze core(With FreeRTOS)
*/

/* FreeRTOS */
#include "FreeRTOS.h"
#include "task.h"

/* AMD */
#include "xil_printf.h"
#include "xparameters.h"

/* App */
#include <stdint.h>
#include "hardware_def.h"
#include "led.h"
#include "uart.h"

/* Test */
#include "uart_recv_test.h"
#include "uart_send_test.h"
#include "uart_loopback_test.h"
#include "reg_dump.h"

/*  テスト用のアプリは３種類あり、どれか１つを選択します。
    *UARTループバック(デフォルト)
    *テストデータの送信のみ
    *受信してトレースバッファに記録して、その後出力

    There are three types of applications for testing, choose one of them.
    *UART loopback (default)
    *Test data transmission only
    *Receive and record to trace buffer, then output
*/
#define UART_LOOPBACK_TEST
//#define UART_SEND_ONLY_TEST
//#define UART_RECV_ONLY_TEST


/*  周辺レジスタは、ハードウェアの初期化が完了するとダンプできます。
    これは、UARTボーレートにずれがある場合に役立つかもしれません。
         * FCLK divider (PLx_REF_CTRL) : (x=0~3)

    Note:この機能はSTDOUTを利用します。テスト対象のUARTと別にSTDOUT用の
    シリアルポートを用意してください。
    例：KR260(ps_uart_1, mdm)

    Peripheral registers are dumped once hardware initialization is complete.
    This may help in case of deviations in the UART baud rate.
         * FCLK divider (PLx_REF_CTRL) : (x=0~3)

    Note: This function uses STDOUT. Prepare a serial port 
    for STDOUT separately from the UART to be tested.
    Example: KR260(ps_uart_1, mdm)
*/
#define MEMDUMP_FCLK_PLx_REF_CTRL


/*
    ハートビート確認用としてLED点滅機能の有無を選択できます。
    LED blinking function can be selected for heartbeat confirmation.
*/
#define ENABLE_LED_BLINK


/******************************************************/
static void InitHardwareTask( void *pvParameters );
void BlinkLedTask( void *pvParameters );

static TaskHandle_t init_hardware_task;


int main( void )
{
    /*  ハードウェア初期化タスク
        FreeRTOSはタスク生成後のタスク状態は"起動状態"のため、
        他のタスクが動作しないように、本タスクは最高優先度に設定し
        てブロックする。ハードウェア初期化後、本タスクを削除し、
        他のタスクをスタートさせる.

        Hardware initialization task
        Since the task state of FreeRTOS is “startup state” 
        after task creation, this task is set to the highest priority 
        and blocked to prevent other tasks from running. 
        After hardware initialization, this task is deleted 
        and other tasks are started.
    */
    xTaskCreate(    InitHardwareTask,
                    ( const char * ) "InitHW",
                    (configMINIMAL_STACK_SIZE + 200),
                    NULL,
                    TSK_PRIORITY_INIT_HW,
                    &init_hardware_task );

    vTaskStartScheduler();

    for( ;; );
    return 0;
}


static void InitHardwareTask( void *pvParameters )
{
    int ret;

    /* Init Devices. */
    xil_printf( "Info: Setup Hardware.\n" );

    ret = InitLed();
    if(ret != eSUCCESS) {
        xil_printf( "Err:InitLed Failure.\n" );
        configASSERT(FALSE);
    }

    ret = InitUart();
    if(ret != eSUCCESS) {
        xil_printf( "Err:InitUart Failure.\n" );
        configASSERT(FALSE);
    }

    /* InitTest */

#if defined(UART_LOOPBACK_TEST)
    xil_printf( "Info: Setup UART loopback test.\n" );
    InitUartLoopbackTest();

#elif defined (UART_SEND_ONLY_TEST)
    xil_printf( "Info: Setup UART send only test.\n" );
    InitUartSendTest();

#elif defined (UART_RECV_ONLY_TEST)
    xil_printf( "Info: Setup UART receive only test.\n" );
    InitUartRecvTest();

#endif

#if defined(MEMDUMP_FCLK_PLx_REF_CTRL)
    ReadRegisterPLxRefCtrl();
#endif

#ifdef ENABLE_LED_BLINK
    xTaskCreate(    BlinkLedTask,
                    ( const char * ) "BlinkLED",
                    (configMINIMAL_STACK_SIZE),
                    NULL,
                    TSK_PRIORITY_INIT_HW,
                    NULL );
#endif

    vTaskDelete(init_hardware_task);
    for( ;; );
}

void BlinkLedTask( void *pvParameters )
{
    for(;;)
    {
        LedOn();
        vTaskDelay(100/portTICK_PERIOD_MS);

        LedOff();
        vTaskDelay(100/portTICK_PERIOD_MS);

        LedOn();
        vTaskDelay(100/portTICK_PERIOD_MS);

        LedOff();
        vTaskDelay(700/portTICK_PERIOD_MS);
    }
}