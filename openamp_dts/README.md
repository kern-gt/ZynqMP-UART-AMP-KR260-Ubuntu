# OpenAMP Devicetree

[日本語版はこちら](https://github.com/kern-gt/ZynqMP-UART-AMP-KR260-Ubuntu/blob/main/openamp_dts/README_jp.md)

## Overview
UART-AMP uses OpenAMP's Remoteproc feature to load ELFs and manage startup and shutdown of the sub-core Cortex-R5 (CR5). To do so, the default devicetree of KriaSOM (ZynqMP) needs to be rewritten.
OpenAMP requires a reserved area on the DRAM that is not managed by Linux, so the Devicetree Overlay cannot be used.

**Environment**.
Assume Kria k26 SOM and Xilinx certified Ubuntu 22.04.

## Compiling Devicetree
Run the following to generate user-override.dtb.
```
$ bash . /dtc_example.sh
```

## Install OpenAMP
On Xilinx certified Ubuntu 22.04, place a custom Devicetree (user-override.dtb) under /boot/fimrware and it will load that from the next boot.