# UART-AMP Echo Back Test

[日本語版はこちら](https://github.com/kern-gt/ZynqMP-UART-AMP-KR260-Ubuntu/blob/main/linux_uart_amp_echo_test/README_jp.md)

## Overview
This test code sends the contents of test data (test_data.txt) from ZynqMP CA53 (Linux) to UART and verifies if the data looped back from the subcore is correct.  
**Environment**  
* KR260 board
* Xilinx certified Ubuntu 22.04


**Contents of linux_uart_amp_echo_test folder**  
This folder contains the following items.
* uart_amp_echo_test.py : Python implementation of echo back test code to run on CA53(linux)
* test_data.txt : Defines test data used in the echo test.
* requirements.txt : Python environment settings used for echo test
* bitstream : PL (FPGA) bitstream that combines Microblaze firmware ELF
* dtbo : Devicetree Overlay used for PL (FPGA) configuration
* r5_fw : Firmware ELF for Core0 and Core1 of sub-core Cortex-R5 (CR5)
* setup_fpga_remoteproc_ubuntu.sh : setup script to load and start PL (FPGA) configuration and ELF for 2 cores of CR5 on CA53 (linux)
* openamp_dtb : setup script for OpenAMP

## Getting Started
How to run an echo back test.  
**Procedures**  
1. copy the program to ZynqMP
1. install Devicetree for OpenAMP
1. Setup UART-AMP
1. Setup the Python environment
1. Running the echo-back test

### 1. copy program to ZynqMP
Copy the entire _linux_uart_amp_echo_test_ folder to the ZynqMP side.
There are several ways to do this.
* Drag and drop the entire folder using RemoteSSH of VSCode.
* Send the folder by SCP command.
* Insert the SD card of ZynqMP into the host PC and copy the folder.

VSCode's RemoteSSH is easy and recommended.

### 2. Install Devicetree for OpenAMP
Devicetree itself is located in the following folder.
```
linux_uart_amp_echo_test/setup_fpga_remoteproc/openamp_dtb/user-override.dtb
```
Copy this to the following on the ZynqMP SD card.
```
/boot/firmware/user-override.dtb
```
Restart ZynqMP.
```
$ sudo reboot
```
If the Remoteproc folder appears, you have succeeded.
```
$ ls -1 /sys/class/remoteproc/
remoteproc0
remoteproc1
```

### 3. Setup UART-AMP
Setup loopback firmware for 3 cores: PL (FPGA) and sub-cores (CR5-0, CR5-1, Microblaze).

Run the following script on ZynqMP.
```
$ pwd
/home/ubuntu/linux_echo_test_app
$ sudo bash . /setup_fpga_remoteproc/setup_fpga_remoteproc_ubuntu.sh
```

PL (FPGA) is configured and SFP_LED1 starts blinking irregularly. Also, UF1_LED and UF2_LED start blinking irregularly because two cores of CR5 are activated.

### 4. Python environment setup
Once the sub-cores are up and running, prepare to run the test application on the Linux side.
You will need the pyserial package. Also, since we will be creating a virtual environment with venv, you will need to make sure that you have the correct version of venv for your Python version.
```
$ python -V
$ python -V
Python 3.10.12

$ python3 -m venv uart-amp
$ source . /uart-amp/bin/activate
(uart-amp)$ python -m pip install -r requirements.txt
(uart-amp)$ python -m pip list
Package Version
---------- -------
pip 22.0.2
pyserial 3.5
setuptools 59.6.0
```

### 5. Run the echo-back test
Select one of the three sub-cores to use.
You can find the device file name of the UART with the following command: 
```
$ ls /dev/ttyUL*
```
When using AXI-UARTLite IP, the Linux side seems to recognize it as “ttyULx”. In my environment, the following assignments were made.
* /dev/ttyUL0 : CR5-0
* /dev/ttyUL1 : CR5-1
* /dev/ttyUL2 : Microblaze

Execute the following command on ZynqMP.
```
# CR5-0
(uart-amp)$ python uart_amp_echo_test.py test_data.txt -p /dev/ttyUL0
# CR5-1
(uart-amp)$ python uart_amp_echo_test.py test_data.txt -p /dev/ttyUL1
# Microblaze
(uart-amp)$ python uart_amp_echo_test.py test_data.txt -p /dev/ttyUL2
```
If you see logs like the following, you have succeeded.
```
Verify Pass. count_bytes= 1 recv=b'1'
Verify Pass. count_bytes= 2 recv=b'2'
Verify Pass. count_bytes= 3 recv=b'3'
(...)
Verify Pass. count_bytes= 32997 recv=b'7' (...)
Verify Pass. count_bytes= 32998 recv=b'8' (...)
Verify Pass. count_bytes= 32999 recv=b'\n'
Success echo test.
```
<br><br><br>
## Information for developers
### Folder structure
The following files are located in the linux_echo_test folder.
1. linux_echo_test/
    - setup_fpga_remoteproc/
        - bitstream/
            - bitstream.bin file (design_1_wrapper.bit.bin) with combined ELF for Microblaze
        - dtbo/
            - Devicetree Overlay file (uart_amp.dtbo)
        - r5_fw/
            - ELF for CR5-0 core(app_echo_uart_r5_0.elf)
            - ELF for CR5-1 core(app_echo_uart_r5_1.elf)
        - setup_fpga_remoteproc_ubuntu.sh
    - uart_amp_echo_test.py : Python implementation of Linux UART echo back test
    - test_data.txt : Communication data definition used for echo back test
    - requirements.txt
  
**linux_echo_test/**  
The code for the Python implementation of the echo-back test to be executed on the CA53 (Linux) side is placed here (uart_amp_echo_test.py).
The sending and receiving are separated into separate threads so that as much load as possible can be placed on the sub-core.
test_data.txt defines the transfer data for the echo back test. The default data size is 33000 bytes.
requirements.txt defines the packages required when creating a Python virtual environment with venv.
  
**bitstream/**  
The bitstream file should be a “.bin” file, not a “.bit” file. Also, combine the ELF for Microblaze into the bitstream file. This can be done in Vivado by going to “Tools>Associate ELF Files...” in Vivado.
The ELFs for Microblaze are located in the project folder of the Vitis Classic IDE.
```
microblaze_firmware.vitis_classic/app_echo_uart_mb_0/Release/app_echo_uart_mb_0.elf
```
  
**dtbo/**  
The Devicetree Overlay file is obtained by generating the device tree source code for PL from the XSA file in the hw_export folder and compiling it to DTB. See README.md in hw_export folder for details.
  
**r5_fw/**  
The ELF for CR5 core is located in the project folder of Vitis Unified IDE.
```
r5_firmware.vitis_unified_ide/app_echo_uart_r5_0/build/app_echo_uart_r5_0.elf
r5_firmware.vitis_unified_ide/app_echo_uart_r5_1/build/app_echo_uart_r5_1.elf
```
  
**setup_fpga_remoteproc_ubuntu.sh**  
1. This script does the following
1. Create application folder for xmutil function
1. FPGA Configuration using xmutil command
1. Load ELF for CR5 core using Remoteproc
1. Booting CR5 core using Remoteproc


Devicetree Overlay will create UART device files in the following folder.
* /dev/ttyULx

### Test data
The transfer data is defined in test_data.txt.
The default data is 33000Byte.

### Communication baud rate
The baud rate of AXI-UARTLite is different for CR5 and Microblaze.
* CR5 : 115200bps
* Microbaze : 9600bps

The baud rate of AXI-UARTLite is determined at the stage of logic synthesis and implementation, and cannot be changed. Therefore, it is not necessary or possible to set the baud rate in the Linux side application.
The reason why we changed the speed depending on the type of sub-core is because when Microblaze is 115200bps, packet loss occurs. AXI-UARTLite has 16 bytes of receive hardware FIFO, but we found that buffer overflow occurs even if we get this by interrupt. Therefore, we decided to reduce the speed.
