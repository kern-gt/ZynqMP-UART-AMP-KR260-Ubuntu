/*
    hardware_def.h
    author: sh-goto
*/

#ifndef HARDWARE_DEF_H
#define HARDWARE_DEF_H
#include "xparameters.h"

/* Device info */
#define LED_DEV_ID  XPAR_AXI_GPIO_2_DEVICE_ID
#define UART_DEV_ID XPAR_AXI_UARTLITE_5_DEVICE_ID

/* FreeRTOS Task */
#define TSK_PRIORITY_INIT_HW (tskIDLE_PRIORITY + 4)
#define TSK_TSK_PRIORITY_UART_SEND (tskIDLE_PRIORITY + 3)
#define TSK_TSK_PRIORITY_UART_RECV (tskIDLE_PRIORITY + 3)

#endif /* HARDWARE_DEF_H */

