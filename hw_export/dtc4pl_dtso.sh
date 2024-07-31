#!/bin/bash

#example $ bash ./dtc.sh uart_amp.dtbo

if [ -z "$1" ]; then
    DTBO_FILE_NAME="uart_amp.dtbo"
else
    DTBO_FILE_NAME=${1}
fi

cd "$(dirname "$0")"
WORK_DIR=$(pwd)
DTSO_DIR="pl_dtso"

dtc -@ -O dtb -o ./${DTSO_DIR}/${DTBO_FILE_NAME} ./${DTSO_DIR}/pl-final.dts