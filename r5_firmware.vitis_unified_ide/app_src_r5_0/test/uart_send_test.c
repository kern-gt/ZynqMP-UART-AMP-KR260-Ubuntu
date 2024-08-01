/*
    uart_send_test.c
    author: sh-goto
    description:
        このアプリはUART送信のみのテストを行います.
        uart_send_test_data.cにテストデータを定義してあります.
        また、START_DELAYで開始時間を遅らせることが出来ます.

        使用方法：main.cで以下のマクロを有効にして、その他を無効にする.
        Usage: Enable the following macros in main.c and disable the others.

        //#define UART_LOOPBACK_TEST
        #define UART_SEND_ONLY_TEST
        //#define UART_RECV_ONLY_TEST
    
   System structure diagram:
        *CR5 or MicroBlaze

            <Send Test Task> --> <UART TX Task> --> (UART TX)

            Figure legend:
                (Name) : Hardware IP
                <Name> : Task
                  -->  : FreeRTOS StreamBuffer

        *Linux(CA53)
            テストシステムの概要
            Test System Overview

             ------------------------------------|
            | Linux                              |                       __________________
            |                                    |                      |CR5 or Microblaze |
            |                                    |                      | send test app    |
            |          Any logging tool <<---- (UART RX)<<-(UART TX) <--|__________________|
            |____________________________________|

            システム全体図.サブコアは３つからテスト対象を選択します.
            Overall system diagram. The sub-core selects the test target from three
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

#include "uart_send_test.h"

#define START_DELAY (5000U)

static void prvUartSendTestTask(void *pvParameters);

void InitUartSendTest(void)
{
    xTaskCreate(prvUartSendTestTask,
				( const char * ) "UartTxTest",
				configMINIMAL_STACK_SIZE,
				NULL,
				tskIDLE_PRIORITY,
				NULL );
}

static void prvUartSendTestTask(void *pvParameters)
{
    unsigned int i, cnt;

    vTaskDelay( START_DELAY/ portTICK_PERIOD_MS );
    xil_printf( "Start Uart tx test.\n" );

    for(i=0;i<sizeof(test_data);i++)
    {
        cnt = xStreamBufferSend(    uart_send_buf,
                                    (test_data + i),
                                    1,
                                    portMAX_DELAY);
        if(cnt == 0){
            xil_printf( "Blocking xuart_send_buf.\n" );
        }
    }

    
    xil_printf( "Finish Uart tx test.\n" );
    
    for(;;)
    {
        vTaskDelay( 10000/ portTICK_PERIOD_MS );
    }
}

