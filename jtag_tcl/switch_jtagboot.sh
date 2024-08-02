#!/bin/bash

# https://xilinx.github.io/kria-apps-docs/creating_applications/2022.1/build/html/docs/bootmodes.html

cd "$(dirname "$0")"
WORK_DIR=$(pwd)

xsct ./boot_jtag.tcl
if [ $? -eq 0 ]; then
    echo ""
    echo "Switching to JTAG Boot mode is completed!"
else
    echo ""
    echo ""
    echo "Error! Processing failed."
fi
