/*
    uart_recv_test.c
    author: sh-goto
    description:
        このアプリはUART受信のみのテストを行います。トレースバッファに
        受信データを溜め込み、一定時間後に記録内容をSTDOUTから出力します.
        出力するまでの時間はTRACE_TIME_MSマクロで設定します.
        単位はミリ秒です.

        This application will test only UART reception. It accumulates
        the received data in the trace buffer and outputs the recorded
        contents from STDOUT after a certain time.
        The time until output is set by the TRACE_TIME_MS macro. 
        The unit is milliseconds.

        使用方法：main.cで以下のマクロを有効にして、その他を無効にする.
        Usage: Enable the following macros in main.c and disable the others.

        //#define UART_LOOPBACK_TEST
        //#define UART_SEND_ONLY_TEST
        #define UART_RECV_ONLY_TEST
    

    System structure diagram:
        *CR5 or MicroBlaze

            (UART RX) --> <UART RX Task> --> <Trace Task> 
            
            <Trace Print Task> --> <UART TX Task> --> (UART TX)

            Figure legend:
                (Name) : Hardware IP
                <Name> : Task
                  -->  : FreeRTOS StreamBuffer

        *Linux(CA53)
            テストシステムの概要
            Test System Overview

             ------------------------------------|
            | Linux                              |                       __________________
            |         Any Serial Tool ------>> (UART TX)->>(UART RX) -->|CR5 or Microblaze |
            |                                    |                      | loopback test app|
            |         Any logging tool <<----- (UART RX)<<-(UART TX) <--|__________________|
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

#include "uart_recv_test.h"

#define TRACE_TIME_MS (15000U)

static void UartTraceTask( void *pvParameters);
static void TracePrintTask(void *pvParameters);

static uint8_t uart_tmp_buf[128];
static uint8_t trace_buf[((32+1)*1100)];

void InitUartRecvTest(void)
{
    xTaskCreate(UartTraceTask,
				( const char * ) "UartRecvTraceTest",
				configMINIMAL_STACK_SIZE,
				NULL,
				tskIDLE_PRIORITY,
				NULL );

    xTaskCreate(TracePrintTask,
				( const char * ) "TracePrint",
				configMINIMAL_STACK_SIZE,
				NULL,
				tskIDLE_PRIORITY,
				NULL );
}

static void UartTraceTask( void *pvParameters )
{
	size_t get_bytes_cnt = 0;
    unsigned int trace_buf_cnt = 0;
    int total_buf_cnt = sizeof(trace_buf);
    int i;

    memset(trace_buf, ':', sizeof(trace_buf));
    xil_printf( "Start trace of recv data.\n" );

    for(;;)
    {
        get_bytes_cnt = xStreamBufferReceive(uart_recv_buf,
                                            (void*)uart_tmp_buf,
                                            sizeof(uart_tmp_buf),
                                            500/ portTICK_PERIOD_MS);

        if((total_buf_cnt - get_bytes_cnt) > 0)
        {
            if(get_bytes_cnt != 0)
            {
                for(i=0;i < (int)get_bytes_cnt;i++)
                {
                    trace_buf[trace_buf_cnt + i] = uart_tmp_buf[i];
                }
                trace_buf_cnt += i;
            }
        }
    }
}

static void TracePrintTask(void *pvParameters)
{
    unsigned int i;

    vTaskDelay( TRACE_TIME_MS/ portTICK_PERIOD_MS );
    xil_printf( "Output Trace mem.\n" );

    for(i=0;i < (sizeof(trace_buf)-1);i++)
    {
        xil_printf( "%c",trace_buf[i]);
    }
    
    for(;;)
    {
        vTaskDelay( 10000/ portTICK_PERIOD_MS );
    }
}

