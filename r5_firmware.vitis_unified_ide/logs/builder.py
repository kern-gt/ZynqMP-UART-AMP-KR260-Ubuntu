# 2024-08-02T03:57:07.904120
import vitis

client = vitis.create_client()
client.set_workspace(path="/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/ZynqMP-UART-AMP-KR260-Ubuntu/r5_firmware.vitis_unified_ide")

comp = client.get_component(name="app_echo_uart_r5_1")
comp.build()

platform = client.get_component(name="pf_amp_uart_r5_0")
status = platform.build()

platform = client.get_component(name="pf_amp_uart_r5_1")
status = platform.build()

comp = client.get_component(name="app_echo_uart_r5_0")
status = comp.clean()

comp.build()

status = comp.clean()

comp = client.get_component(name="app_echo_uart_r5_1")
status = comp.clean()

status = platform.build()

vitis.dispose()

