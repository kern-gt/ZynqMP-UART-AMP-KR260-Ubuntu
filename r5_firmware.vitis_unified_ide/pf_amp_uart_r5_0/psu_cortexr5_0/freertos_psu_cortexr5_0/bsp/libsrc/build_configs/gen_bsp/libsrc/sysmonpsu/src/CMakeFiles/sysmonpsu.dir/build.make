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
include libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/compiler_depend.make

# Include the progress variables for this target.
include libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/progress.make

# Include the compile flags for this target's objects.
include libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/flags.make

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.obj: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/flags.make
libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_selftest.c
libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.obj: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.obj -MF CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.obj.d -o CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_selftest.c

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_selftest.c > CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.i

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_selftest.c -o CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.s

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.obj: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/flags.make
libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_sinit.c
libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.obj: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.obj -MF CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.obj.d -o CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_sinit.c

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_sinit.c > CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.i

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_sinit.c -o CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.s

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.obj: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/flags.make
libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_intr.c
libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.obj: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.obj -MF CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.obj.d -o CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_intr.c

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_intr.c > CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.i

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_intr.c -o CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.s

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.obj: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/flags.make
libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu.c
libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.obj: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.obj -MF CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.obj.d -o CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu.c

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu.c > CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.i

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu.c -o CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.s

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.obj: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/flags.make
libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_g.c
libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.obj: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.obj -MF CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.obj.d -o CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_g.c

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_g.c > CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.i

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/sysmonpsu/src/xsysmonpsu_g.c -o CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.s

# Object files for target sysmonpsu
sysmonpsu_OBJECTS = \
"CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.obj" \
"CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.obj" \
"CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.obj" \
"CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.obj" \
"CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.obj"

# External object files for target sysmonpsu
sysmonpsu_EXTERNAL_OBJECTS =

libsrc/sysmonpsu/src/libsysmonpsu.a: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.obj
libsrc/sysmonpsu/src/libsysmonpsu.a: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.obj
libsrc/sysmonpsu/src/libsysmonpsu.a: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.obj
libsrc/sysmonpsu/src/libsysmonpsu.a: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.obj
libsrc/sysmonpsu/src/libsysmonpsu.a: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.obj
libsrc/sysmonpsu/src/libsysmonpsu.a: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/build.make
libsrc/sysmonpsu/src/libsysmonpsu.a: libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C static library libsysmonpsu.a"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && $(CMAKE_COMMAND) -P CMakeFiles/sysmonpsu.dir/cmake_clean_target.cmake
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sysmonpsu.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/build: libsrc/sysmonpsu/src/libsysmonpsu.a
.PHONY : libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/build

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/clean:
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src && $(CMAKE_COMMAND) -P CMakeFiles/sysmonpsu.dir/cmake_clean.cmake
.PHONY : libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/clean

libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/depend:
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/sysmonpsu/src /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_0/psu_cortexr5_0/freertos_psu_cortexr5_0/bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/depend

