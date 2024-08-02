# Vivado

[日本語版はこちら](https://github.com/kern-gt/ZynqMP-UART-AMP-KR260-Ubuntu/blob/main/vivado/README_jp.md)

## Overview
Contains the IP integrator TCL and the constraint file (.xdc) for the KR260 board. after creating a new project in Vivado, you can run the TCL to expand the IP block.
```
Tools > Run Tck Script...
```

## Environment
We are using Vivado ML v2024.1.

## Other notes
### AXI UARTLite baud rate
The baud rate is changed on CR5 side and Microblaze side.
* CR5 : 115200bps
* Microblaze : 9600bps

The reason is that the Microblaze cannot process at 115200bps and packet loss will occur.
The hardware receive FIFO of AXI UARTLite has 16 bytes, but we have confirmed that the buffer overflows even if it is read by an interrupt.
  
#### Microblaze ELF binding
We want to deploy ELFs in BlockRAM to start Microblaze when the PL (FPGA) configuration is executed. To do so, bind the ELF to a bitstream in Vivado; after configuring the ELF, regenerate the bitstream.
```
Tools > Associate ELF Files...
```

#### Generating Bitstream.bin
Bitstream is basically a (.bit) file, but the file converted to BIN is required for Devicetree Overlay.Vivado can be configured to output BIN.
```
PROGECT MANAGER > Settings > Progect Settings > Bitstream
Enable -bin_file
```

