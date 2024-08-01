/*
    led.c
    author: sh-goto
*/

/* AMD */
#include "xparameters.h"
#include "xgpio.h"

/* App */
#include "user_def.h"
#include "hardware_def.h"
#include "led.h"

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

#define LED_CHANNEL (1U)
#define LED_BITMASK (0x00000001U)

static XGpio dev_led;
static int initialize_done = FALSE;

eErr_t InitLed(void)
{
    int status;

    status = XGpio_Initialize(&dev_led, LED_BASEADDR);
    if (status != XST_SUCCESS) {
		xil_printf("Initialization of GPIO failed.\n");
		return eFAILURE;
	}

    XGpio_DiscreteClear(&dev_led, 
                        LED_CHANNEL, 
                        LED_BITMASK);

    XGpio_SetDataDirection( &dev_led, 
                            LED_CHANNEL, 
                            ~LED_BITMASK);

    initialize_done = TRUE;

    return eSUCCESS;
}

eErr_t LedOn(void)
{
    if(initialize_done != TRUE) return eFAILURE;

    XGpio_DiscreteWrite(&dev_led, 
                        LED_CHANNEL, 
                        LED_BITMASK);
    return eSUCCESS;
}

eErr_t LedOff(void)
{
    if(initialize_done != TRUE) return eFAILURE;

    XGpio_DiscreteClear(&dev_led, 
                        LED_CHANNEL, 
                        LED_BITMASK);
    return eSUCCESS;
}

