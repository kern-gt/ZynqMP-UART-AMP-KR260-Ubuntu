/*
    uart_loopback_test.c
    author: sh-goto
    description:
        このUARTテストアプリは受信したデータをそのまま送信して送り返す、
        ループバックを行います.ホスト側(Linux CA53)でループテスト用の
        Pythonテストアプリを実行し、受信したデータの検証を行う目的で
        使用します.
        It is used to run a Python test app for loop testing
        on the host side (Linux CA53) to verify the received data.

        使用方法：main.cで以下のマクロを有効にして、その他を無効にする.
        Usage: Enable the following macros in main.c and disable the others.

        #define UART_LOOPBACK_TEST
        //#define UART_SEND_ONLY_TEST
        //#define UART_RECV_ONLY_TEST


    System structure diagram:
        *CR5 or MicroBlaze

            (UART RX) --> <UART RX Task> --> <Loopback Test Task> --> <UART TX Task> ==> (UART TX)

            Figure legend:
                (Name) : Hardware IP
                <Name> : Task
                  -->  : FreeRTOS StreamBuffer
                  ==>  : Data Buffer

        *Linux(CA53)
            テストシステムの概要
            Test System Overview

             ------------------------------------|
            | Echo test Python App               |                       __________________
            |   <data transmission thread> ->> (UART TX)->>(UART RX) -->|CR5 or Microblaze |
            |                                    |                      | loopback test app|
            |   <Data validation thread> <<--- (UART RX)<<-(UART TX) <--|__________________|
            |____________________________________|

            システム全体図.サブコアは３つからテスト対象を選択します.
            Overall system diagram. The sub-core selects the test target from three.
             ___________                _______________
            |Linux      |              |               |
            |         (UART) <<-->> (UART) CR5_0 core  |
            |           |              |---------------|
            |         (UART) <<-->> (UART) CR5_1 core  |
            |           |              |---------------|
            |         (UART) <<-->> (UART) Microblaze  |
            |___________|              |_______________|

*/

/* FreeRTOS */
#include "FreeRTOS.h"
#include "task.h"
#include "stream_buffer.h"

/* AMD */
#include "xil_printf.h"
#include "xparameters.h"

/* App */
#include <stdint.h>
#include "uart.h"

#include "uart_loopback_test.h"

static void UartLoopTestTask(void *pvParameters);

#define REQ_RECV_DATA_BYTES (32U)
static uint8_t uart_loopback_buf[REQ_RECV_DATA_BYTES];

void InitUartLoopbackTest(void)
{
    xTaskCreate(UartLoopTestTask,
                ( const char * ) "LoopTest",
                (configMINIMAL_STACK_SIZE + 200),
                NULL,
                (tskIDLE_PRIORITY+1),
                NULL );
}

static void UartLoopTestTask(void *pvParameters)
{
    unsigned int cnt;
    size_t get_bytes_cnt = 0;

    /* Init buf. 0x41='A' */
    memset(uart_loopback_buf, 0x41, sizeof(uart_loopback_buf));

    for(;;)
    {
        get_bytes_cnt = xStreamBufferReceive(   uart_recv_buf,
                                                uart_loopback_buf,
                                                REQ_RECV_DATA_BYTES,
                                                20/ portTICK_PERIOD_MS);

        if(get_bytes_cnt > 0)
        {
            cnt = xStreamBufferSend(uart_send_buf,
                                    uart_loopback_buf,
                                    get_bytes_cnt,
                                    20/ portTICK_PERIOD_MS);

            if(cnt == 0){
                xil_printf( "Blocking uart_send_buf.\n" );
            }
        }
    }
}

