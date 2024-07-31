#include "xuartlite.h"

XUartLite_Config XUartLite_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,axi-uartlite-2.0", /* compatible */
		0x80010000, /* reg */
		0x1c200, /* xlnx,baudrate */
		0x0, /* xlnx,use-parity */
		0x0, /* xlnx,odd-parity */
		0x8, /* xlnx,data-bits */
		0x1059, /* interrupts */
		0xf9010000 /* interrupt-parent */
	},
	{
		"xlnx,axi-uartlite-2.0", /* compatible */
		0x80030000, /* reg */
		0x1c200, /* xlnx,baudrate */
		0x0, /* xlnx,use-parity */
		0x0, /* xlnx,odd-parity */
		0x8, /* xlnx,data-bits */
		0x105a, /* interrupts */
		0xf9010000 /* interrupt-parent */
	},
	{
		"xlnx,axi-uartlite-2.0", /* compatible */
		0x80040000, /* reg */
		0x2580, /* xlnx,baudrate */
		0x0, /* xlnx,use-parity */
		0x0, /* xlnx,odd-parity */
		0x8, /* xlnx,data-bits */
		0x105b, /* interrupts */
		0xf9010000 /* interrupt-parent */
	},
	{
		"xlnx,axi-uartlite-2.0", /* compatible */
		0x80050000, /* reg */
		0x1c200, /* xlnx,baudrate */
		0x0, /* xlnx,use-parity */
		0x0, /* xlnx,odd-parity */
		0x8, /* xlnx,data-bits */
		0x105c, /* interrupts */
		0xf9010000 /* interrupt-parent */
	},
	{
		"xlnx,axi-uartlite-2.0", /* compatible */
		0x80060000, /* reg */
		0x1c200, /* xlnx,baudrate */
		0x0, /* xlnx,use-parity */
		0x0, /* xlnx,odd-parity */
		0x8, /* xlnx,data-bits */
		0x105d, /* interrupts */
		0xf9010000 /* interrupt-parent */
	},
	 {
		 NULL
	}
};