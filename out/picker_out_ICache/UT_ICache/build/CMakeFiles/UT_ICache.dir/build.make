# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /usr/local/lib/python3.10/dist-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /usr/local/lib/python3.10/dist-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/UT_ICache

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/UT_ICache/build

# Include any dependencies generated for this target.
include CMakeFiles/UT_ICache.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/UT_ICache.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/UT_ICache.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/UT_ICache.dir/flags.make

CMakeFiles/UT_ICache.dir/_pyswig/dutPYTHON_wrap.cxx.o: CMakeFiles/UT_ICache.dir/flags.make
CMakeFiles/UT_ICache.dir/_pyswig/dutPYTHON_wrap.cxx.o: _pyswig/dutPYTHON_wrap.cxx
CMakeFiles/UT_ICache.dir/_pyswig/dutPYTHON_wrap.cxx.o: CMakeFiles/UT_ICache.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/UT_ICache/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/UT_ICache.dir/_pyswig/dutPYTHON_wrap.cxx.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/UT_ICache.dir/_pyswig/dutPYTHON_wrap.cxx.o -MF CMakeFiles/UT_ICache.dir/_pyswig/dutPYTHON_wrap.cxx.o.d -o CMakeFiles/UT_ICache.dir/_pyswig/dutPYTHON_wrap.cxx.o -c /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/UT_ICache/build/_pyswig/dutPYTHON_wrap.cxx

CMakeFiles/UT_ICache.dir/_pyswig/dutPYTHON_wrap.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/UT_ICache.dir/_pyswig/dutPYTHON_wrap.cxx.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/UT_ICache/build/_pyswig/dutPYTHON_wrap.cxx > CMakeFiles/UT_ICache.dir/_pyswig/dutPYTHON_wrap.cxx.i

CMakeFiles/UT_ICache.dir/_pyswig/dutPYTHON_wrap.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/UT_ICache.dir/_pyswig/dutPYTHON_wrap.cxx.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/UT_ICache/build/_pyswig/dutPYTHON_wrap.cxx -o CMakeFiles/UT_ICache.dir/_pyswig/dutPYTHON_wrap.cxx.s

# Object files for target UT_ICache
UT_ICache_OBJECTS = \
"CMakeFiles/UT_ICache.dir/_pyswig/dutPYTHON_wrap.cxx.o"

# External object files for target UT_ICache
UT_ICache_EXTERNAL_OBJECTS =

_UT_ICache.so: CMakeFiles/UT_ICache.dir/_pyswig/dutPYTHON_wrap.cxx.o
_UT_ICache.so: CMakeFiles/UT_ICache.dir/build.make
_UT_ICache.so: /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/UT_ICache/libUTICache.so
_UT_ICache.so: CMakeFiles/UT_ICache.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/UT_ICache/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module _UT_ICache.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/UT_ICache.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/UT_ICache.dir/build: _UT_ICache.so
.PHONY : CMakeFiles/UT_ICache.dir/build

CMakeFiles/UT_ICache.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/UT_ICache.dir/cmake_clean.cmake
.PHONY : CMakeFiles/UT_ICache.dir/clean

CMakeFiles/UT_ICache.dir/depend:
	cd /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/UT_ICache/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/UT_ICache /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/UT_ICache /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/UT_ICache/build /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/UT_ICache/build /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/UT_ICache/build/CMakeFiles/UT_ICache.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/UT_ICache.dir/depend

