/*
    uart.h
    author: sh-goto
*/

#ifndef UART_H
#define UART_H

#include "user_def.h"
#include "stream_buffer.h"

/* FreeRTOS Obj */
extern StreamBufferHandle_t uart_send_buf;
extern StreamBufferHandle_t uart_recv_buf;

/* Init UART driver */
eErr_t InitUart(void);

#endif /* UART_H */

