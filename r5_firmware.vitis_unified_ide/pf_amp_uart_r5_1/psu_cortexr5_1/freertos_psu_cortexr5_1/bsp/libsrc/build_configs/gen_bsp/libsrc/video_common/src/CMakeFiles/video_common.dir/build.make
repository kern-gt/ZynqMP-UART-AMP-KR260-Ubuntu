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
include libsrc/video_common/src/CMakeFiles/video_common.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libsrc/video_common/src/CMakeFiles/video_common.dir/compiler_depend.make

# Include the progress variables for this target.
include libsrc/video_common/src/CMakeFiles/video_common.dir/progress.make

# Include the compile flags for this target's objects.
include libsrc/video_common/src/CMakeFiles/video_common.dir/flags.make

libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc.c.obj: libsrc/video_common/src/CMakeFiles/video_common.dir/flags.make
libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/video_common/src/xvidc.c
libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc.c.obj: libsrc/video_common/src/CMakeFiles/video_common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/video_common/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc.c.obj -MF CMakeFiles/video_common.dir/xvidc.c.obj.d -o CMakeFiles/video_common.dir/xvidc.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/video_common/src/xvidc.c

libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/video_common.dir/xvidc.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/video_common/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/video_common/src/xvidc.c > CMakeFiles/video_common.dir/xvidc.c.i

libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/video_common.dir/xvidc.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/video_common/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/video_common/src/xvidc.c -o CMakeFiles/video_common.dir/xvidc.c.s

libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_edid.c.obj: libsrc/video_common/src/CMakeFiles/video_common.dir/flags.make
libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_edid.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/video_common/src/xvidc_edid.c
libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_edid.c.obj: libsrc/video_common/src/CMakeFiles/video_common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_edid.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/video_common/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_edid.c.obj -MF CMakeFiles/video_common.dir/xvidc_edid.c.obj.d -o CMakeFiles/video_common.dir/xvidc_edid.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/video_common/src/xvidc_edid.c

libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_edid.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/video_common.dir/xvidc_edid.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/video_common/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/video_common/src/xvidc_edid.c > CMakeFiles/video_common.dir/xvidc_edid.c.i

libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_edid.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/video_common.dir/xvidc_edid.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/video_common/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/video_common/src/xvidc_edid.c -o CMakeFiles/video_common.dir/xvidc_edid.c.s

libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_edid_ext.c.obj: libsrc/video_common/src/CMakeFiles/video_common.dir/flags.make
libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_edid_ext.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/video_common/src/xvidc_edid_ext.c
libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_edid_ext.c.obj: libsrc/video_common/src/CMakeFiles/video_common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_edid_ext.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/video_common/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_edid_ext.c.obj -MF CMakeFiles/video_common.dir/xvidc_edid_ext.c.obj.d -o CMakeFiles/video_common.dir/xvidc_edid_ext.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/video_common/src/xvidc_edid_ext.c

libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_edid_ext.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/video_common.dir/xvidc_edid_ext.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/video_common/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/video_common/src/xvidc_edid_ext.c > CMakeFiles/video_common.dir/xvidc_edid_ext.c.i

libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_edid_ext.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/video_common.dir/xvidc_edid_ext.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/video_common/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/video_common/src/xvidc_edid_ext.c -o CMakeFiles/video_common.dir/xvidc_edid_ext.c.s

libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_parse_edid.c.obj: libsrc/video_common/src/CMakeFiles/video_common.dir/flags.make
libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_parse_edid.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/video_common/src/xvidc_parse_edid.c
libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_parse_edid.c.obj: libsrc/video_common/src/CMakeFiles/video_common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_parse_edid.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/video_common/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_parse_edid.c.obj -MF CMakeFiles/video_common.dir/xvidc_parse_edid.c.obj.d -o CMakeFiles/video_common.dir/xvidc_parse_edid.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/video_common/src/xvidc_parse_edid.c

libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_parse_edid.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/video_common.dir/xvidc_parse_edid.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/video_common/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/video_common/src/xvidc_parse_edid.c > CMakeFiles/video_common.dir/xvidc_parse_edid.c.i

libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_parse_edid.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/video_common.dir/xvidc_parse_edid.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/video_common/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/video_common/src/xvidc_parse_edid.c -o CMakeFiles/video_common.dir/xvidc_parse_edid.c.s

libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_timings_table.c.obj: libsrc/video_common/src/CMakeFiles/video_common.dir/flags.make
libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_timings_table.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/video_common/src/xvidc_timings_table.c
libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_timings_table.c.obj: libsrc/video_common/src/CMakeFiles/video_common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_timings_table.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/video_common/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_timings_table.c.obj -MF CMakeFiles/video_common.dir/xvidc_timings_table.c.obj.d -o CMakeFiles/video_common.dir/xvidc_timings_table.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/video_common/src/xvidc_timings_table.c

libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_timings_table.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/video_common.dir/xvidc_timings_table.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/video_common/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/video_common/src/xvidc_timings_table.c > CMakeFiles/video_common.dir/xvidc_timings_table.c.i

libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_timings_table.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/video_common.dir/xvidc_timings_table.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/video_common/src && /tools/Xilinx/Vitis/2024.1/gnu/armr5/lin/gcc-arm-none-eabi/bin/armr5-none-eabi-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/video_common/src/xvidc_timings_table.c -o CMakeFiles/video_common.dir/xvidc_timings_table.c.s

# Object files for target video_common
video_common_OBJECTS = \
"CMakeFiles/video_common.dir/xvidc.c.obj" \
"CMakeFiles/video_common.dir/xvidc_edid.c.obj" \
"CMakeFiles/video_common.dir/xvidc_edid_ext.c.obj" \
"CMakeFiles/video_common.dir/xvidc_parse_edid.c.obj" \
"CMakeFiles/video_common.dir/xvidc_timings_table.c.obj"

# External object files for target video_common
video_common_EXTERNAL_OBJECTS =

libsrc/video_common/src/libvideo_common.a: libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc.c.obj
libsrc/video_common/src/libvideo_common.a: libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_edid.c.obj
libsrc/video_common/src/libvideo_common.a: libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_edid_ext.c.obj
libsrc/video_common/src/libvideo_common.a: libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_parse_edid.c.obj
libsrc/video_common/src/libvideo_common.a: libsrc/video_common/src/CMakeFiles/video_common.dir/xvidc_timings_table.c.obj
libsrc/video_common/src/libvideo_common.a: libsrc/video_common/src/CMakeFiles/video_common.dir/build.make
libsrc/video_common/src/libvideo_common.a: libsrc/video_common/src/CMakeFiles/video_common.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C static library libvideo_common.a"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/video_common/src && $(CMAKE_COMMAND) -P CMakeFiles/video_common.dir/cmake_clean_target.cmake
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/video_common/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/video_common.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libsrc/video_common/src/CMakeFiles/video_common.dir/build: libsrc/video_common/src/libvideo_common.a
.PHONY : libsrc/video_common/src/CMakeFiles/video_common.dir/build

libsrc/video_common/src/CMakeFiles/video_common.dir/clean:
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/video_common/src && $(CMAKE_COMMAND) -P CMakeFiles/video_common.dir/cmake_clean.cmake
.PHONY : libsrc/video_common/src/CMakeFiles/video_common.dir/clean

libsrc/video_common/src/CMakeFiles/video_common.dir/depend:
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/video_common/src /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/video_common/src /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/psu_cortexr5_1/freertos_psu_cortexr5_1/bsp/libsrc/build_configs/gen_bsp/libsrc/video_common/src/CMakeFiles/video_common.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libsrc/video_common/src/CMakeFiles/video_common.dir/depend

