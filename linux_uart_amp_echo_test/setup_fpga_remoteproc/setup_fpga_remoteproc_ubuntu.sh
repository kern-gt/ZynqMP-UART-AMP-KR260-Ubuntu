#!/bin/bash

# Execution by sudors authority is required.
# sudors権限による実行が必要です.

cd "$(dirname "$0")" || exit
#WORK_DIR=$(pwd)
SHELL_JSON='{"shell_type" : "XRT_FLAT","num_slots": "1"}'
FPGA_APP_NAME="uart_amp"

echo "Create FPGA APP /lib/firmware/xilinx/${FPGA_APP_NAME}"
mkdir -p /lib/firmware/xilinx/${FPGA_APP_NAME}

echo "${SHELL_JSON}" > /lib/firmware/xilinx/${FPGA_APP_NAME}/shell.json

cp ./r5_fw/*.elf /lib/firmware/
cp ./bitstream/*.bin /lib/firmware/xilinx/${FPGA_APP_NAME}/
cp ./dtbo/*.dtbo /lib/firmware/xilinx/${FPGA_APP_NAME}/
echo ""

echo "Stop CR5-0 and CR5-1."
if echo stop > /sys/class/remoteproc/remoteproc0/state; then
    echo "  Stop CR5-1 OK"
else
    echo "  Stop CR5-0 Failed"
fi

if echo stop > /sys/class/remoteproc/remoteproc1/state; then
    echo "  Stop CR5-1 OK"
else
    echo "  Stop CR5-1 Failed"
fi
echo ""

echo "Start FPGA Configuration."
if xmutil unloadapp | grep "(Ok)" > /dev/null; then
    echo "  FPGA unload OK"
else
    echo "  Err! : FPGA unload Failed"
fi

if xmutil loadapp ${FPGA_APP_NAME} | grep "loaded to slot" > /dev/null; then
    echo "  FPGA Configuration OK"
    echo ""
    FPGA_LOAD_SUCCESS="OK"
else
    echo "  Err! : FPGA Configuration Failed"
    FPGA_LOAD_SUCCESS="Failed"
fi


if [ ${FPGA_LOAD_SUCCESS} = "OK" ]; then
    echo "Load ELF for CR5-0 and CR5-1."

    if echo app_echo_uart_r5_0.elf > /sys/class/remoteproc/remoteproc0/firmware; then
        echo "  CR5-0 load OK"
        
        if echo app_echo_uart_r5_1.elf > /sys/class/remoteproc/remoteproc1/firmware; then
            echo "  CR5-1 load OK"
            LOAD_ELF_CR5="OK"
        else
            echo "  Err! : Load ELF for CR5-1 Failed"
            LOAD_ELF_CR5="Failed"
        fi
    else
        echo "  Err! : Load ELF for CR5-0 Failed"
        LOAD_ELF_CR5="Failed"
    fi
else
    LOAD_ELF_CR5="Failed"
fi


if [ ${LOAD_ELF_CR5} = "OK" ]; then
    echo ""
    echo "Run CR5-0 and CR5-1."
    if echo start > /sys/class/remoteproc/remoteproc0/state; then
        echo "  CR5-0 start OK"
        if echo start > /sys/class/remoteproc/remoteproc1/state; then
            echo "  CR5-1 start OK"
        else
            echo "  Err! : Start CR5-1 Failed"
        fi
    else
        echo "  Err! : Start CR5-0 Failed"
    fi
fi

