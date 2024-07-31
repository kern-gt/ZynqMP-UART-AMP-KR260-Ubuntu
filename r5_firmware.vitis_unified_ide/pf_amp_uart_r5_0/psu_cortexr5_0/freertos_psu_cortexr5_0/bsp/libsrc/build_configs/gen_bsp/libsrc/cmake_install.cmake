# Install script for directory: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc

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
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/avbuf/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/axipmon/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/clockps/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/common/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/coresightps_dcc/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/csudma/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/ddrcpsu/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/dpdma/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/dppsu/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpiops/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/ipipsu/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/qspipsu/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/resetps/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/rtcpsu/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/spips/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/ttcps/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/uartlite/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/uartps/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/usbpsu/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/video_common/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/wdtps/src/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/zdma/src/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/include/../include")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/include/.." TYPE DIRECTORY MESSAGE_LAZY FILES "/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/include")
endif()

