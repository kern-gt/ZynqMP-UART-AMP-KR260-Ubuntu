/*
    hardware_def.h
    author: sh-goto
*/

#ifndef HARDWARE_DEF_H
#define HARDWARE_DEF_H
#include "xparameters.h"

/* Device info */
#define USE_CR5_0_CORE
//#define USE_CR5_1_CORE

#ifdef USE_CR5_0_CORE

#define LED_BASEADDR  XPAR_AXI_GPIO_0_BASEADDR
#define UART_BASEADDR XPAR_AXI_UARTLITE_3_BASEADDR

#elif defined (USE_CR5_1_CORE)

#define LED_BASEADDR  XPAR_AXI_GPIO_1_BASEADDR
#define UART_BASEADDR XPAR_AXI_UARTLITE_4_BASEADDR

#endif

/* FreeRTOS Task */
#define TSK_PRIORITY_INIT_HW (tskIDLE_PRIORITY + 4)
#define TSK_TSK_PRIORITY_UART_SEND (tskIDLE_PRIORITY + 3)
#define TSK_TSK_PRIORITY_UART_RECV (tskIDLE_PRIORITY + 3)

#endif /* HARDWARE_DEF_H */

