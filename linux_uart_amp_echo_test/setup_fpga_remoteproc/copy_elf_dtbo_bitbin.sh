#!/bin/bash

cd "$(dirname "$0")"
WORK_DIR=$(pwd)

CR5_0_ELF_DIR="./hogehoge"
CR5_0_ELF_NAME="app_echo_uart_r5_0.elf"
CR5_1_ELF_DIR="./hogehoge"
CR5_1_ELF_NAME="app_echo_uart_r5_1.elf"
PL_DTBO_DIR="./hogehoge"
PL_DTBO_NAME="uart_amp.dtbo"
BITSTREAM_BIN_DIR="./hogehoge"
BITSTREAM_BIN_NAME="design_1_wrapper.bit.bin"

#mkdir -p ./r5_fw
#mkdir -p ./dtbo
#mkdir -p ./bitstream

#echo "copy CR5-0 ELF src=${CR5_0_ELF_DIR}/${CR5_0_ELF_NAME}"
#cp ${CR5_0_ELF_DIR}/${CR5_0_ELF_NAME} ./r5_fw/
#echo "copy CR5-1 ELF src=${CR5_1_ELF_DIR}/${CR5_1_ELF_NAME}"
#cp ${CR5_1_ELF_DIR}/${CR5_1_ELF_NAME} ./r5_fw/
#echo "copy dtbo src=${PL_DTBO_DIR}/${PL_DTBO_NAME}"
#cp ${PL_DTBO_DIR}/${PL_DTBO_NAME} ./dtbo/
#echo "copy bitstream.bin src=${BITSTREAM_BIN_DIR}/${BITSTREAM_BIN_NAME}"
#cp ${BITSTREAM_BIN_DIR}/${BITSTREAM_BIN_NAME} ./bitstream/

