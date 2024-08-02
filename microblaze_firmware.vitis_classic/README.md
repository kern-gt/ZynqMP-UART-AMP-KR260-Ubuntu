# Microblaze Firmware Project for UART-AMP
[日本語版はこちら](https://github.com/kern-gt/ZynqMP-UART-AMP-KR260-Ubuntu/blob/main/microblaze_firmware.vitis_classic/README_jp.md)
## Overview
This folder contains the Microblaze firmware project for Vitis Classic IDE v2024.1
It will be the original source code for the ELF for Microblaze that will be coupled to Bitstream in the echo-back test sample.

## Instructions for use
This folder contains the following
* Source code for the FreeRTOS-based loopback application part (app_src)
* Vitis Classic IDE export project zip

### Step 1: Import the project into Vitis
1. Set this folder (microblaze_firmware.vitis_classic) as your workspace and start it
1. Launch the import window from “File > import
1. Select “Vitis project exported zip file” for “import type
1. Specify _uart_amp_microblaze.ide.zip_ for “Archive File
1. Select all “System Projects” and “Platform Projects
1. “Finish”

### Step 2: Importing the application source code
The _app_src_ folder contains the loopback firmware code.
The source code with the same file name is also stored in the Vitis project, but the one in _app_src_ is the latest one.

```
app_src/
├── app
│   ├── inc
│   │   ├── hardware_def.h
│   │   ├── led.h
│   │   ├── uart.h
│   │   └── user_def.h
│   ├── led.c
│   ├── uart.c
│   └── uart.c.bak
├── lscript.ld
├── main.c
└── test
    ├── inc
    │   ├── reg_dump.h
    │   ├── uart_loopback_test.h
    │   ├── uart_recv_test.h
    │   └── uart_send_test.h
    ├── reg_dump.c
    ├── uart_loopback_test.c
    ├── uart_recv_test.c
    ├── uart_send_test.c
    └── uart_send_test_data.c
```
Overwrite under the following folders of the Vitis project.
```
app_echo_uart_mb_0/src/
```
Now you can build your code.
Also, you will need to switch to Jtagboot mode when you bag a Microblaze stand-alone step execution.
[jtag_tcl/switch_jtagboot.sh](https://github.com/kern-gt/ZynqMP-UART-AMP-KR260-Ubuntu/tree/main/jtag_tcl)
<br><br><br>
## Information for Developers
The Microblaze firmware is basically the same design as for the Cortex-R5 (CR5).
BootCPU for FSBL is allocated CA53#0.

[See CR5 project for software structure](https://github.com/kern-gt/ZynqMP-UART-AMP-KR260-Ubuntu/blob/main/r5_firmware.vitis_unified_ide/README.md)
<br>
The differences from the CR5 version are as follows
* Bare-metal device drivers are used when SDT is not supported.
* Linker information (Memory Map) is for Microblaze Local-MEM
* LEDs use LED1 for SFP+ (KR260 board)
* Vitis Classic is used instead of Vitis Unified IDE
<br>
### Using bare-metal device drivers that do not support SDT
SDT stands for System Device Tree, a hardware information management mechanism adopted in Vitis v2023.2.
[Learn more about SDT here.](https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/2743468485/Porting+embeddedsw+components+to+system+device+tree+SDT+based+flow)
Hardware information exported from Vivado can be used with SDT so that the API can be written more concisely.
<br>
### Differences in Linker Information
Microblaze uses 128KB of local memory (BlockRAM).
All firmware is placed on local memory.
Currently, there is almost no free space available due to usage of over 110KB. If it does not fit, you may need to consider putting some sections on DRAM.
<br>
### Heartbeat LED
The LED is assigned to LED1 for SFP+ on the KR260 board.
This LED is the G8 pin (Bank66, LVCMOS18) on the ZynqMP.
<br>
### Reason for using Vitis Classic
The reason is that the author's lack of skills made it difficult to develop Microblaze with Vitis Unified IDE.
We are sorry that the source code is partially incompatible between CR5 and Microblaze, which hinders understanding.
The specific reason for the development difficulties is that when you start JTAG debugging in Microblaze, the breakpoints are placed in completely different source code locations.
The cause is thought to be an inconsistency in the bag symbol information contained in the ELF. The author was unable to determine the cause of this problem.

