#!/bin/bash

# Execution by sudors authority is required.
# sudors権限による実行が必要です.

cd "$(dirname "$0")"
WORK_DIR=$(pwd)
SHELL_JSON='{"shell_type" : "XRT_FLAT","num_slots": "1"}'
FPGA_APP_NAME="uart_amp"

echo "Create FPGA APP /lib/firmware/xilinx/${FPGA_APP_NAME}"
mkdir -p /lib/firmware/xilinx/${FPGA_APP_NAME}

echo ${SHELL_JSON} > /lib/firmware/xilinx/${FPGA_APP_NAME}/shell.json

cp ./r5_fw/*.elf /lib/firmware/
cp ./bitstream/*.bin /lib/firmware/xilinx/${FPGA_APP_NAME}/
cp ./dtbo/*.dtbo /lib/firmware/xilinx/${FPGA_APP_NAME}/

echo "Stop CR5-0 and CR5-1."
echo stop > /sys/class/remoteproc/remoteproc0/state
echo stop > /sys/class/remoteproc/remoteproc1/state

echo "Start FPGA Configuration."
xmutil unloadapp
xmutil loadapp ${FPGA_APP_NAME}

echo "Load ELF for CR5-0 and CR5-1."
echo app_echo_uart_r5_0.elf > /sys/class/remoteproc/remoteproc0/firmware
echo app_echo_uart_r5_1.elf > /sys/class/remoteproc/remoteproc1/firmware

echo "Run CR5-0 and CR5-1."
echo start > /sys/class/remoteproc/remoteproc0/state
echo start > /sys/class/remoteproc/remoteproc1/state