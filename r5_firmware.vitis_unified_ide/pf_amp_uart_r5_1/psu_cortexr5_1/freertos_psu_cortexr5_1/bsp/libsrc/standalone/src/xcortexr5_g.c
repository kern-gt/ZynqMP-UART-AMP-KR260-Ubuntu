#include "xcortexr5.h"

XCortexr5_Config XCortexr5_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {
	{
		0xff,  /* access-val */
		0x1fc9f082,  /* cpu-frequency */
		0x1  /* reg */
	}
};