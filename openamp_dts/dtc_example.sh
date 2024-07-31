#!/bin/bash

cd "$(dirname "$0")"
WORK_DIR=$(pwd)

dtc -v
dtc -@ -O dtb -o ./user-override.dtb ./system-top.dts

MSG0="-Info---------------------------------------------------------------------------"
MSG1="When using Xilinx Certified Ubuntu 22.04 and KR260 board, if you place user-override.dtb in the following Path, u-boot will take priority and load it from the next boot." 
MSG2="/boot/firmware/user-override.dtb"
echo ""
echo "" 
echo ""
echo ""
echo ""
echo ""
echo ${MSG0}
echo ${MSG1}
echo ${MSG2}