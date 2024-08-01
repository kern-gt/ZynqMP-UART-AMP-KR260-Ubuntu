# 2024-07-29T22:32:44.260425
import vitis

client = vitis.create_client()
client.set_workspace(path="/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis")

platform = client.create_platform_component(name = "pf_amp_uart_r5_0",hw_design = "/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/dts_gen/design_1_wrapper.xsa",os = "freertos",cpu = "psu_cortexr5_0",domain_name = "freertos_psu_cortexr5_0")

platform = client.get_component(name="pf_amp_uart_r5_0")
domain = platform.get_domain(name="freertos_psu_cortexr5_0")

status = domain.set_config(option = "proc", param = "proc_extra_compiler_flags", value = "-Wall -Wextra -fno-tree-loop-distribute-patterns")

status = domain.set_config(option = "os", param = "freertos_stdin", value = "psu_coresight_0")

status = domain.set_config(option = "os", param = "freertos_stdout", value = "psu_coresight_0")

status = domain.set_config(option = "os", param = "freertos_stream_buffer", value = "true")

status = platform.build()

comp = client.create_app_component(name="app_echo_uart_r5_0",platform = "/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/export/pf_amp_uart_r5_0/pf_amp_uart_r5_0.xpfm",domain = "freertos_psu_cortexr5_0",template = "freertos_hello_world")

status = platform.build()

comp = client.get_component(name="app_echo_uart_r5_0")
comp.build()

status = comp.clean()

status = platform.build()

comp.build()

platform = client.create_platform_component(name = "pf_amp_uart_r5_1",hw_design = "/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/dts_gen/design_1_wrapper.xsa",os = "freertos",cpu = "psu_cortexr5_1",domain_name = "freertos_psu_cortexr5_1")

platform = client.get_component(name="pf_amp_uart_r5_1")
domain = platform.get_domain(name="freertos_psu_cortexr5_1")

status = domain.set_config(option = "proc", param = "proc_extra_compiler_flags", value = "-Wall -Wextra -fno-tree-loop-distribute-patterns")

status = domain.set_config(option = "os", param = "freertos_stdin", value = "psu_coresight_0")

status = domain.set_config(option = "os", param = "freertos_stdout", value = "psu_coresight_0")

status = domain.set_config(option = "os", param = "freertos_stream_buffer", value = "true")

status = domain.set_config(option = "lib", param = "XILTIMER_tick_timer", value = "psu_ttc_1", lib_name="xiltimer")

status = platform.build()

comp = client.create_app_component(name="app_echo_uart_r5_1",platform = "/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/export/pf_amp_uart_r5_1/pf_amp_uart_r5_1.xpfm",domain = "freertos_psu_cortexr5_1",template = "freertos_hello_world")

status = platform.build()

comp = client.get_component(name="app_echo_uart_r5_1")
comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

comp = client.get_component(name="app_echo_uart_r5_0")
status = comp.clean()

platform = client.get_component(name="pf_amp_uart_r5_0")
status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

domain = platform.get_domain(name="freertos_psu_cortexr5_0")

status = domain.set_config(option = "os", param = "freertos_stdin", value = "None")

status = domain.set_config(option = "os", param = "freertos_stdout", value = "None")

status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

platform = client.get_component(name="pf_amp_uart_r5_1")
domain = platform.get_domain(name="freertos_psu_cortexr5_1")

status = domain.set_config(option = "os", param = "freertos_stdin", value = "None")

status = domain.set_config(option = "os", param = "freertos_stdout", value = "None")

status = platform.build()

comp = client.get_component(name="app_echo_uart_r5_1")
status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

