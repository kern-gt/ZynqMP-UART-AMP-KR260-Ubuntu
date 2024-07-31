# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitisclassic/pf_kr260_amp_uart_mb_0/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitisclassic/pf_kr260_amp_uart_mb_0/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {pf_kr260_amp_uart_mb_0}\
-hw {/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/dts_gen/design_1_wrapper.xsa}\
-proc {microblaze_0} -os {freertos10_xilinx} -fsbl-target {psu_cortexa53_0} -out {/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitisclassic}

platform write
platform generate -domains 
platform active {pf_kr260_amp_uart_mb_0}
bsp reload
bsp config stdin "none"
bsp config stdout "none"
bsp config stream_buffer "true"
bsp config extra_compiler_flags "-ffunction-sections -fdata-sections -Wall -Wextra -fno-tree-loop-distribute-patterns"
bsp write
bsp reload
catch {bsp regenerate}
bsp config stdin "psu_uart_1"
bsp config stdout "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform generate
