# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitisclassic/app_echo_uart_mb_0_system/_ide/scripts/debugger_app_echo_uart_mb_0-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitisclassic/app_echo_uart_mb_0_system/_ide/scripts/debugger_app_echo_uart_mb_0-default.tcl
# 
connect -url tcp:127.0.0.1:3121
source /tools/Xilinx/Vitis/2024.1/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx SCK-KR XFL1VS21SNELA" && level==0 && jtag_device_ctx=="jsn-SCK-KR-XFL1VS21SNELA-04724093-0"}
fpga -file /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitisclassic/app_echo_uart_mb_0/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitisclassic/pf_kr260_amp_uart_mb_0/export/pf_kr260_amp_uart_mb_0/hw/design_1_wrapper.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitisclassic/pf_kr260_amp_uart_mb_0/export/pf_kr260_amp_uart_mb_0/sw/pf_kr260_amp_uart_mb_0/boot/fsbl.elf
set bp_56_41_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_56_41_fsbl_bp
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -processor
dow /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitisclassic/app_echo_uart_mb_0/Release/app_echo_uart_mb_0.elf
configparams force-mem-access 0
bpadd -addr &main
