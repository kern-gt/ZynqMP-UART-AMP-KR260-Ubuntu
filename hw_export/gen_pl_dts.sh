#!/bin/bash

#example
#$ source /tools/Xilinx/Vitis/2024.1/settings64.sh
#$ bash ./gen_pl_dts.sh hogehoge_project_name

if [ -z "$1" ]; then
    PJ_NAME="defalt_project_name"
else
    PJ_NAME=${1}
fi

cd "$(dirname "$0")"
WORK_DIR=$(pwd)

GEN_DTS_PATH="./my_dts/my_dts/${PJ_NAME}/psu_cortexa53_0/device_tree_domain/bsp/"
PL_DTS_DIR="pl_dtso"
TCL_CMD="createdts -hw ./design_1_wrapper.xsa -platform-name ${PJ_NAME} -overlay -out my_dts"


echo ${TCL_CMD} > "createdts.tcl"
xsct "./createdts.tcl"
mkdir -p "./${PL_DTS_DIR}"
cp "${GEN_DTS_PATH}pl.dtsi" "./${PL_DTS_DIR}/"
cp "${GEN_DTS_PATH}pl-custom.dtsi" "./${PL_DTS_DIR}/"
sed -e "s/#include/\/include\//" ${GEN_DTS_PATH}pl-final.dts > ./${PL_DTS_DIR}/pl-final.dts
#cp ../../${PJ_NAME}.runs/impl_1/design_1_wrapper.bin ./pl_dtso/design_1_wrapper.bit.bin
