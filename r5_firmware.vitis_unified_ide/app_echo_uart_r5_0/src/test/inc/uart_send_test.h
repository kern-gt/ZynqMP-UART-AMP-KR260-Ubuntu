/*
    uart_send_test.h
    author: sh-goto
*/

#ifndef UART_SEND_TEST_H
#define UART_SEND_TEST_H
#include <stdint.h>

#define UART_TEST_DATA_SIZE_BYTES ((32+1)*10)

extern const uint8_t test_data[UART_TEST_DATA_SIZE_BYTES];

void InitUartSendTest(void);

#endif /* UART_SEND_TEST_H */

