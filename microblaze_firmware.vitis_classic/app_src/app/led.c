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
    このコードはXilinx Baremetal driver(SDT対応なし)を使用しています.
    Vitis Classic 環境でのみ使用できます.
    SDT:System Device Tree
    Vitis IDE:(v2023.1以前)または、Vitis Classic IDE(v2023.2以降)

    This code uses the Xilinx Baremetal driver (no SDT support).
    It can only be used in Vitis Classic environment.
    SDT: System Device Tree
    Vitis IDE (prior to v2023.1) or Vitis Classic IDE (v2023.2 or later)
*/
#ifdef SDT
#error "This code uses the Xilinx Baremetal driver (no SDT support).\
It can only be used in the Vitis Classic IDE environment."
#endif

#define LED_CHANNEL (1U)
#define LED_BITMASK (0x00000001U)

static XGpio dev_led;
static int initialize_done = FALSE;

eErr_t InitLed(void)
{
    int status;

    status = XGpio_Initialize(&dev_led, LED_DEV_ID);
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

