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
CMAKE_SOURCE_DIR = /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp

# Include any dependencies generated for this target.
include libsrc/emacps/src/CMakeFiles/emacps.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libsrc/emacps/src/CMakeFiles/emacps.dir/compiler_depend.make

# Include the progress variables for this target.
include libsrc/emacps/src/CMakeFiles/emacps.dir/progress.make

# Include the compile flags for this target's objects.
include libsrc/emacps/src/CMakeFiles/emacps.dir/flags.make

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_g.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/flags.make
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_g.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_g.c
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_g.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_g.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_g.c.obj -MF CMakeFiles/emacps.dir/xemacps_g.c.obj.d -o CMakeFiles/emacps.dir/xemacps_g.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_g.c

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_g.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emacps.dir/xemacps_g.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_g.c > CMakeFiles/emacps.dir/xemacps_g.c.i

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_g.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emacps.dir/xemacps_g.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_g.c -o CMakeFiles/emacps.dir/xemacps_g.c.s

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_hw.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/flags.make
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_hw.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_hw.c
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_hw.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_hw.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_hw.c.obj -MF CMakeFiles/emacps.dir/xemacps_hw.c.obj.d -o CMakeFiles/emacps.dir/xemacps_hw.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_hw.c

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_hw.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emacps.dir/xemacps_hw.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_hw.c > CMakeFiles/emacps.dir/xemacps_hw.c.i

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_hw.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emacps.dir/xemacps_hw.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_hw.c -o CMakeFiles/emacps.dir/xemacps_hw.c.s

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_control.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/flags.make
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_control.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_control.c
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_control.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_control.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_control.c.obj -MF CMakeFiles/emacps.dir/xemacps_control.c.obj.d -o CMakeFiles/emacps.dir/xemacps_control.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_control.c

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_control.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emacps.dir/xemacps_control.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_control.c > CMakeFiles/emacps.dir/xemacps_control.c.i

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_control.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emacps.dir/xemacps_control.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_control.c -o CMakeFiles/emacps.dir/xemacps_control.c.s

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/flags.make
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps.c
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps.c.obj -MF CMakeFiles/emacps.dir/xemacps.c.obj.d -o CMakeFiles/emacps.dir/xemacps.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps.c

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emacps.dir/xemacps.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps.c > CMakeFiles/emacps.dir/xemacps.c.i

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emacps.dir/xemacps.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps.c -o CMakeFiles/emacps.dir/xemacps.c.s

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_bdring.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/flags.make
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_bdring.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_bdring.c
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_bdring.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_bdring.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_bdring.c.obj -MF CMakeFiles/emacps.dir/xemacps_bdring.c.obj.d -o CMakeFiles/emacps.dir/xemacps_bdring.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_bdring.c

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_bdring.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emacps.dir/xemacps_bdring.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_bdring.c > CMakeFiles/emacps.dir/xemacps_bdring.c.i

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_bdring.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emacps.dir/xemacps_bdring.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_bdring.c -o CMakeFiles/emacps.dir/xemacps_bdring.c.s

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_sinit.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/flags.make
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_sinit.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_sinit.c
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_sinit.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_sinit.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_sinit.c.obj -MF CMakeFiles/emacps.dir/xemacps_sinit.c.obj.d -o CMakeFiles/emacps.dir/xemacps_sinit.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_sinit.c

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_sinit.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emacps.dir/xemacps_sinit.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_sinit.c > CMakeFiles/emacps.dir/xemacps_sinit.c.i

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_sinit.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emacps.dir/xemacps_sinit.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_sinit.c -o CMakeFiles/emacps.dir/xemacps_sinit.c.s

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_intr.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/flags.make
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_intr.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_intr.c
libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_intr.c.obj: libsrc/emacps/src/CMakeFiles/emacps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_intr.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_intr.c.obj -MF CMakeFiles/emacps.dir/xemacps_intr.c.obj.d -o CMakeFiles/emacps.dir/xemacps_intr.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_intr.c

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_intr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emacps.dir/xemacps_intr.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_intr.c > CMakeFiles/emacps.dir/xemacps_intr.c.i

libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_intr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emacps.dir/xemacps_intr.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src/xemacps_intr.c -o CMakeFiles/emacps.dir/xemacps_intr.c.s

# Object files for target emacps
emacps_OBJECTS = \
"CMakeFiles/emacps.dir/xemacps_g.c.obj" \
"CMakeFiles/emacps.dir/xemacps_hw.c.obj" \
"CMakeFiles/emacps.dir/xemacps_control.c.obj" \
"CMakeFiles/emacps.dir/xemacps.c.obj" \
"CMakeFiles/emacps.dir/xemacps_bdring.c.obj" \
"CMakeFiles/emacps.dir/xemacps_sinit.c.obj" \
"CMakeFiles/emacps.dir/xemacps_intr.c.obj"

# External object files for target emacps
emacps_EXTERNAL_OBJECTS =

libsrc/emacps/src/libemacps.a: libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_g.c.obj
libsrc/emacps/src/libemacps.a: libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_hw.c.obj
libsrc/emacps/src/libemacps.a: libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_control.c.obj
libsrc/emacps/src/libemacps.a: libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps.c.obj
libsrc/emacps/src/libemacps.a: libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_bdring.c.obj
libsrc/emacps/src/libemacps.a: libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_sinit.c.obj
libsrc/emacps/src/libemacps.a: libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_intr.c.obj
libsrc/emacps/src/libemacps.a: libsrc/emacps/src/CMakeFiles/emacps.dir/build.make
libsrc/emacps/src/libemacps.a: libsrc/emacps/src/CMakeFiles/emacps.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C static library libemacps.a"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && $(CMAKE_COMMAND) -P CMakeFiles/emacps.dir/cmake_clean_target.cmake
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/emacps.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libsrc/emacps/src/CMakeFiles/emacps.dir/build: libsrc/emacps/src/libemacps.a
.PHONY : libsrc/emacps/src/CMakeFiles/emacps.dir/build

libsrc/emacps/src/CMakeFiles/emacps.dir/clean:
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src && $(CMAKE_COMMAND) -P CMakeFiles/emacps.dir/cmake_clean.cmake
.PHONY : libsrc/emacps/src/CMakeFiles/emacps.dir/clean

libsrc/emacps/src/CMakeFiles/emacps.dir/depend:
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/emacps/src /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src/CMakeFiles/emacps.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libsrc/emacps/src/CMakeFiles/emacps.dir/depend

