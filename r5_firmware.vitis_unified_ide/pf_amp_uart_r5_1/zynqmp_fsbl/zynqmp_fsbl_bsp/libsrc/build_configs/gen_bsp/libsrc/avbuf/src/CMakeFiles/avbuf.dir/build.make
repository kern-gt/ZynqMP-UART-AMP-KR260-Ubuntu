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
CMAKE_SOURCE_DIR = /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp

# Include any dependencies generated for this target.
include libsrc/avbuf/src/CMakeFiles/avbuf.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libsrc/avbuf/src/CMakeFiles/avbuf.dir/compiler_depend.make

# Include the progress variables for this target.
include libsrc/avbuf/src/CMakeFiles/avbuf.dir/progress.make

# Include the compile flags for this target's objects.
include libsrc/avbuf/src/CMakeFiles/avbuf.dir/flags.make

libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf.c.obj: libsrc/avbuf/src/CMakeFiles/avbuf.dir/flags.make
libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/avbuf/src/xavbuf.c
libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf.c.obj: libsrc/avbuf/src/CMakeFiles/avbuf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/avbuf/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch64/lin/aarch64-none/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf.c.obj -MF CMakeFiles/avbuf.dir/xavbuf.c.obj.d -o CMakeFiles/avbuf.dir/xavbuf.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/avbuf/src/xavbuf.c

libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/avbuf.dir/xavbuf.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/avbuf/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch64/lin/aarch64-none/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/avbuf/src/xavbuf.c > CMakeFiles/avbuf.dir/xavbuf.c.i

libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/avbuf.dir/xavbuf.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/avbuf/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch64/lin/aarch64-none/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/avbuf/src/xavbuf.c -o CMakeFiles/avbuf.dir/xavbuf.c.s

libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf_clk.c.obj: libsrc/avbuf/src/CMakeFiles/avbuf.dir/flags.make
libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf_clk.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/avbuf/src/xavbuf_clk.c
libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf_clk.c.obj: libsrc/avbuf/src/CMakeFiles/avbuf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf_clk.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/avbuf/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch64/lin/aarch64-none/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf_clk.c.obj -MF CMakeFiles/avbuf.dir/xavbuf_clk.c.obj.d -o CMakeFiles/avbuf.dir/xavbuf_clk.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/avbuf/src/xavbuf_clk.c

libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf_clk.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/avbuf.dir/xavbuf_clk.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/avbuf/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch64/lin/aarch64-none/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/avbuf/src/xavbuf_clk.c > CMakeFiles/avbuf.dir/xavbuf_clk.c.i

libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf_clk.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/avbuf.dir/xavbuf_clk.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/avbuf/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch64/lin/aarch64-none/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/avbuf/src/xavbuf_clk.c -o CMakeFiles/avbuf.dir/xavbuf_clk.c.s

libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf_videoformats.c.obj: libsrc/avbuf/src/CMakeFiles/avbuf.dir/flags.make
libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf_videoformats.c.obj: /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/avbuf/src/xavbuf_videoformats.c
libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf_videoformats.c.obj: libsrc/avbuf/src/CMakeFiles/avbuf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf_videoformats.c.obj"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/avbuf/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch64/lin/aarch64-none/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf_videoformats.c.obj -MF CMakeFiles/avbuf.dir/xavbuf_videoformats.c.obj.d -o CMakeFiles/avbuf.dir/xavbuf_videoformats.c.obj -c /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/avbuf/src/xavbuf_videoformats.c

libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf_videoformats.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/avbuf.dir/xavbuf_videoformats.c.i"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/avbuf/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch64/lin/aarch64-none/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/avbuf/src/xavbuf_videoformats.c > CMakeFiles/avbuf.dir/xavbuf_videoformats.c.i

libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf_videoformats.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/avbuf.dir/xavbuf_videoformats.c.s"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/avbuf/src && /tools/Xilinx/Vitis/2024.1/gnu/aarch64/lin/aarch64-none/bin/aarch64-none-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/avbuf/src/xavbuf_videoformats.c -o CMakeFiles/avbuf.dir/xavbuf_videoformats.c.s

# Object files for target avbuf
avbuf_OBJECTS = \
"CMakeFiles/avbuf.dir/xavbuf.c.obj" \
"CMakeFiles/avbuf.dir/xavbuf_clk.c.obj" \
"CMakeFiles/avbuf.dir/xavbuf_videoformats.c.obj"

# External object files for target avbuf
avbuf_EXTERNAL_OBJECTS =

libsrc/avbuf/src/libavbuf.a: libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf.c.obj
libsrc/avbuf/src/libavbuf.a: libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf_clk.c.obj
libsrc/avbuf/src/libavbuf.a: libsrc/avbuf/src/CMakeFiles/avbuf.dir/xavbuf_videoformats.c.obj
libsrc/avbuf/src/libavbuf.a: libsrc/avbuf/src/CMakeFiles/avbuf.dir/build.make
libsrc/avbuf/src/libavbuf.a: libsrc/avbuf/src/CMakeFiles/avbuf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library libavbuf.a"
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/avbuf/src && $(CMAKE_COMMAND) -P CMakeFiles/avbuf.dir/cmake_clean_target.cmake
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/avbuf/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/avbuf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libsrc/avbuf/src/CMakeFiles/avbuf.dir/build: libsrc/avbuf/src/libavbuf.a
.PHONY : libsrc/avbuf/src/CMakeFiles/avbuf.dir/build

libsrc/avbuf/src/CMakeFiles/avbuf.dir/clean:
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/avbuf/src && $(CMAKE_COMMAND) -P CMakeFiles/avbuf.dir/cmake_clean.cmake
.PHONY : libsrc/avbuf/src/CMakeFiles/avbuf.dir/clean

libsrc/avbuf/src/CMakeFiles/avbuf.dir/depend:
	cd /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/avbuf/src /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/avbuf/src /home/kerngt/work/zynqmp/xli_v2024_1_wk/kr260_amp_uart_release/software_wk/kr260_amp_uart.vitis/pf_amp_uart_r5_1/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/avbuf/src/CMakeFiles/avbuf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libsrc/avbuf/src/CMakeFiles/avbuf.dir/depend

