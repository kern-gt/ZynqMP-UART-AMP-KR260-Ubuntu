# Install script for directory: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/standalone/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/xiltimer/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/freertos10_xilinx/src/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
