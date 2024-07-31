# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Produce verbose output by default.
VERBOSE = 1

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /tools/Xilinx/Vitis/2024.1/tps/lnx64/cmake-3.24.2/bin/cmake

# The command to remove a file.
RM = /tools/Xilinx/Vitis/2024.1/tps/lnx64/cmake-3.24.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp

# Include any dependencies generated for this target.
include libsrc/gpio/src/CMakeFiles/gpio.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libsrc/gpio/src/CMakeFiles/gpio.dir/compiler_depend.make

# Include the progress variables for this target.
include libsrc/gpio/src/CMakeFiles/gpio.dir/progress.make

# Include the compile flags for this target's objects.
include libsrc/gpio/src/CMakeFiles/gpio.dir/flags.make

libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio.c.obj: libsrc/gpio/src/CMakeFiles/gpio.dir/flags.make
libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio.c
libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio.c.obj: libsrc/gpio/src/CMakeFiles/gpio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio.c.obj -MF CMakeFiles/gpio.dir/xgpio.c.obj.d -o CMakeFiles/gpio.dir/xgpio.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio.c

libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gpio.dir/xgpio.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio.c > CMakeFiles/gpio.dir/xgpio.c.i

libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gpio.dir/xgpio.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio.c -o CMakeFiles/gpio.dir/xgpio.c.s

libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_extra.c.obj: libsrc/gpio/src/CMakeFiles/gpio.dir/flags.make
libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_extra.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio_extra.c
libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_extra.c.obj: libsrc/gpio/src/CMakeFiles/gpio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_extra.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_extra.c.obj -MF CMakeFiles/gpio.dir/xgpio_extra.c.obj.d -o CMakeFiles/gpio.dir/xgpio_extra.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio_extra.c

libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_extra.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gpio.dir/xgpio_extra.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio_extra.c > CMakeFiles/gpio.dir/xgpio_extra.c.i

libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_extra.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gpio.dir/xgpio_extra.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio_extra.c -o CMakeFiles/gpio.dir/xgpio_extra.c.s

libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_g.c.obj: libsrc/gpio/src/CMakeFiles/gpio.dir/flags.make
libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_g.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio_g.c
libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_g.c.obj: libsrc/gpio/src/CMakeFiles/gpio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_g.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_g.c.obj -MF CMakeFiles/gpio.dir/xgpio_g.c.obj.d -o CMakeFiles/gpio.dir/xgpio_g.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio_g.c

libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_g.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gpio.dir/xgpio_g.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio_g.c > CMakeFiles/gpio.dir/xgpio_g.c.i

libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_g.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gpio.dir/xgpio_g.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio_g.c -o CMakeFiles/gpio.dir/xgpio_g.c.s

libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_intr.c.obj: libsrc/gpio/src/CMakeFiles/gpio.dir/flags.make
libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_intr.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio_intr.c
libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_intr.c.obj: libsrc/gpio/src/CMakeFiles/gpio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_intr.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_intr.c.obj -MF CMakeFiles/gpio.dir/xgpio_intr.c.obj.d -o CMakeFiles/gpio.dir/xgpio_intr.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio_intr.c

libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_intr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gpio.dir/xgpio_intr.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio_intr.c > CMakeFiles/gpio.dir/xgpio_intr.c.i

libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_intr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gpio.dir/xgpio_intr.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio_intr.c -o CMakeFiles/gpio.dir/xgpio_intr.c.s

libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_selftest.c.obj: libsrc/gpio/src/CMakeFiles/gpio.dir/flags.make
libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_selftest.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio_selftest.c
libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_selftest.c.obj: libsrc/gpio/src/CMakeFiles/gpio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_selftest.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_selftest.c.obj -MF CMakeFiles/gpio.dir/xgpio_selftest.c.obj.d -o CMakeFiles/gpio.dir/xgpio_selftest.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio_selftest.c

libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_selftest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gpio.dir/xgpio_selftest.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio_selftest.c > CMakeFiles/gpio.dir/xgpio_selftest.c.i

libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_selftest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gpio.dir/xgpio_selftest.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio_selftest.c -o CMakeFiles/gpio.dir/xgpio_selftest.c.s

libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_sinit.c.obj: libsrc/gpio/src/CMakeFiles/gpio.dir/flags.make
libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_sinit.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio_sinit.c
libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_sinit.c.obj: libsrc/gpio/src/CMakeFiles/gpio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_sinit.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_sinit.c.obj -MF CMakeFiles/gpio.dir/xgpio_sinit.c.obj.d -o CMakeFiles/gpio.dir/xgpio_sinit.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio_sinit.c

libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_sinit.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gpio.dir/xgpio_sinit.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio_sinit.c > CMakeFiles/gpio.dir/xgpio_sinit.c.i

libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_sinit.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gpio.dir/xgpio_sinit.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src/xgpio_sinit.c -o CMakeFiles/gpio.dir/xgpio_sinit.c.s

# Object files for target gpio
gpio_OBJECTS = \
"CMakeFiles/gpio.dir/xgpio.c.obj" \
"CMakeFiles/gpio.dir/xgpio_extra.c.obj" \
"CMakeFiles/gpio.dir/xgpio_g.c.obj" \
"CMakeFiles/gpio.dir/xgpio_intr.c.obj" \
"CMakeFiles/gpio.dir/xgpio_selftest.c.obj" \
"CMakeFiles/gpio.dir/xgpio_sinit.c.obj"

# External object files for target gpio
gpio_EXTERNAL_OBJECTS =

libsrc/gpio/src/libgpio.a: libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio.c.obj
libsrc/gpio/src/libgpio.a: libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_extra.c.obj
libsrc/gpio/src/libgpio.a: libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_g.c.obj
libsrc/gpio/src/libgpio.a: libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_intr.c.obj
libsrc/gpio/src/libgpio.a: libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_selftest.c.obj
libsrc/gpio/src/libgpio.a: libsrc/gpio/src/CMakeFiles/gpio.dir/xgpio_sinit.c.obj
libsrc/gpio/src/libgpio.a: libsrc/gpio/src/CMakeFiles/gpio.dir/build.make
libsrc/gpio/src/libgpio.a: libsrc/gpio/src/CMakeFiles/gpio.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C static library libgpio.a"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src && $(CMAKE_COMMAND) -P CMakeFiles/gpio.dir/cmake_clean_target.cmake
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gpio.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libsrc/gpio/src/CMakeFiles/gpio.dir/build: libsrc/gpio/src/libgpio.a
.PHONY : libsrc/gpio/src/CMakeFiles/gpio.dir/build

libsrc/gpio/src/CMakeFiles/gpio.dir/clean:
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src && $(CMAKE_COMMAND) -P CMakeFiles/gpio.dir/cmake_clean.cmake
.PHONY : libsrc/gpio/src/CMakeFiles/gpio.dir/clean

libsrc/gpio/src/CMakeFiles/gpio.dir/depend:
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/gpio/src /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/gpio/src/CMakeFiles/gpio.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libsrc/gpio/src/CMakeFiles/gpio.dir/depend

