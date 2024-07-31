# PL Devicetree Overlay

[日本語版はこちら]()

## Overview
Generate a device tree overlay file for PL (FPGA) from a Vivado hardware export file (XSA). Scripts for generation and device tree compilation are provided.

**Environment**
Host PC is assumed to be Ubuntu 20.04. Windows users should use WSL2, etc.

## Generate and compile PL Devicetree Overlay
1. export XSA file from Vivado to _hw_export_ folder.
1. run gen_pl_dts.sh to generate PL Devicetree Overlay and output to pl_dtso folder.
```
$ bash . /gen_pl_dts.sh
$ ls -1 . /pl_dtso
pl-custom.dtsi
pl-final.dts
pl.dtsi
uart_amp.dtbo
```
3. edit Devidetree Overlay as needed.
1. run dtc4ppl_dtso.sh to compile Devicetree. The argument is the name of the file to output after compilation.
```
$ bash . /dtc4pl_dtso.sh uart_amp.dtbo
$ ls . /pl_dtso |grep .dtbo
uart_amp.dtbo
```

## Information for developers
The following changes are made in the echo-back test sample.
**pl-custom.dtsi**
* Disable AXI-GPIO0 : used in CR5-0 core
* Disable AXI-GPIO1 : used in CR5-1 core
* Disable AXI-UARTLite3: used on CR5-0 core
* Disable AXI-UARTLite4: used on CR5-1 core

**pl.dtsi**
As a KR260 board specific issue, the value of _assigned-clock-rates_ is changed to “100000000” (100MHz).
The _assigned-clock-rates_ defines the output clock frequency of FCLK0, and the default value is “99999001” (99.999001 MHz).
The reason for this change is that when the clock driver sets the frequency divider for FCLK0 during the Devicetree Overlay, it sets one step lower to about 90.9 MHz, causing a baud rate shift in AXI-UARTLite and communication problems.

Let me explain the details; FCLK0 has the following clock tree structure.
```
Crystal oscillator (33.3333333MHz) -> IOPLL -> PL0_REF divider -> FCLK0
IOPLL : *60/2 = 30x
IOPLL output : 33.3333333MHz * 30 = 999.99999999MHz
```
If _assigned-clock-rates=<999999001>_, the Divider value of the PL0_REF divider is the following candidate.
* IOPLL -> PL0_REF.Divider=9 -> FCLK0 = 111.111111MHz
* IOPLL -> PL0_REF.Divider=10 -> FCLK0 = 99.99999999MHz
* Divider=11 -> FCLK0 = 90.909090MHz

A value of Divider=10 is ideal, but slightly exceeds the setting of _assigned-clock-rates_. The clock driver sets the value within the range that is not exceeded, so Divider=11, i.e., the RMS value FCLK0 = 90.9 MHz, is selected.

Since AXI-UARTLite is an IP with reduced UART functionality, the baud rate cannot be varied and is determined at the pre-compilation stage.
Since AXI-UARTLite is set to a baud rate divider with an input clock setting of 100 MHz, a shift in the FCLK0 value of the clock source is fatal. This -9% deviation will cause communication failure.

As a countermeasure, change _assigned-clock-rates=<100000000>_ to ensure that the Divider of the PL0_REF divider is selected to divide by 10.


