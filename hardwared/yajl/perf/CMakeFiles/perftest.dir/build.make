# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/drgrid/lightning/hardwared/yajl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/drgrid/lightning/hardwared/yajl

# Include any dependencies generated for this target.
include perf/CMakeFiles/perftest.dir/depend.make

# Include the progress variables for this target.
include perf/CMakeFiles/perftest.dir/progress.make

# Include the compile flags for this target's objects.
include perf/CMakeFiles/perftest.dir/flags.make

perf/CMakeFiles/perftest.dir/perftest.c.o: perf/CMakeFiles/perftest.dir/flags.make
perf/CMakeFiles/perftest.dir/perftest.c.o: perf/perftest.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/drgrid/lightning/hardwared/yajl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object perf/CMakeFiles/perftest.dir/perftest.c.o"
	cd /home/drgrid/lightning/hardwared/yajl/perf && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/perftest.dir/perftest.c.o   -c /home/drgrid/lightning/hardwared/yajl/perf/perftest.c

perf/CMakeFiles/perftest.dir/perftest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/perftest.dir/perftest.c.i"
	cd /home/drgrid/lightning/hardwared/yajl/perf && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/drgrid/lightning/hardwared/yajl/perf/perftest.c > CMakeFiles/perftest.dir/perftest.c.i

perf/CMakeFiles/perftest.dir/perftest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/perftest.dir/perftest.c.s"
	cd /home/drgrid/lightning/hardwared/yajl/perf && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/drgrid/lightning/hardwared/yajl/perf/perftest.c -o CMakeFiles/perftest.dir/perftest.c.s

perf/CMakeFiles/perftest.dir/perftest.c.o.requires:

.PHONY : perf/CMakeFiles/perftest.dir/perftest.c.o.requires

perf/CMakeFiles/perftest.dir/perftest.c.o.provides: perf/CMakeFiles/perftest.dir/perftest.c.o.requires
	$(MAKE) -f perf/CMakeFiles/perftest.dir/build.make perf/CMakeFiles/perftest.dir/perftest.c.o.provides.build
.PHONY : perf/CMakeFiles/perftest.dir/perftest.c.o.provides

perf/CMakeFiles/perftest.dir/perftest.c.o.provides.build: perf/CMakeFiles/perftest.dir/perftest.c.o


perf/CMakeFiles/perftest.dir/documents.c.o: perf/CMakeFiles/perftest.dir/flags.make
perf/CMakeFiles/perftest.dir/documents.c.o: perf/documents.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/drgrid/lightning/hardwared/yajl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object perf/CMakeFiles/perftest.dir/documents.c.o"
	cd /home/drgrid/lightning/hardwared/yajl/perf && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/perftest.dir/documents.c.o   -c /home/drgrid/lightning/hardwared/yajl/perf/documents.c

perf/CMakeFiles/perftest.dir/documents.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/perftest.dir/documents.c.i"
	cd /home/drgrid/lightning/hardwared/yajl/perf && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/drgrid/lightning/hardwared/yajl/perf/documents.c > CMakeFiles/perftest.dir/documents.c.i

perf/CMakeFiles/perftest.dir/documents.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/perftest.dir/documents.c.s"
	cd /home/drgrid/lightning/hardwared/yajl/perf && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/drgrid/lightning/hardwared/yajl/perf/documents.c -o CMakeFiles/perftest.dir/documents.c.s

perf/CMakeFiles/perftest.dir/documents.c.o.requires:

.PHONY : perf/CMakeFiles/perftest.dir/documents.c.o.requires

perf/CMakeFiles/perftest.dir/documents.c.o.provides: perf/CMakeFiles/perftest.dir/documents.c.o.requires
	$(MAKE) -f perf/CMakeFiles/perftest.dir/build.make perf/CMakeFiles/perftest.dir/documents.c.o.provides.build
.PHONY : perf/CMakeFiles/perftest.dir/documents.c.o.provides

perf/CMakeFiles/perftest.dir/documents.c.o.provides.build: perf/CMakeFiles/perftest.dir/documents.c.o


# Object files for target perftest
perftest_OBJECTS = \
"CMakeFiles/perftest.dir/perftest.c.o" \
"CMakeFiles/perftest.dir/documents.c.o"

# External object files for target perftest
perftest_EXTERNAL_OBJECTS =

perf/perftest: perf/CMakeFiles/perftest.dir/perftest.c.o
perf/perftest: perf/CMakeFiles/perftest.dir/documents.c.o
perf/perftest: perf/CMakeFiles/perftest.dir/build.make
perf/perftest: yajl-2.1.1/lib/libyajl_s.a
perf/perftest: perf/CMakeFiles/perftest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/drgrid/lightning/hardwared/yajl/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable perftest"
	cd /home/drgrid/lightning/hardwared/yajl/perf && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/perftest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
perf/CMakeFiles/perftest.dir/build: perf/perftest

.PHONY : perf/CMakeFiles/perftest.dir/build

perf/CMakeFiles/perftest.dir/requires: perf/CMakeFiles/perftest.dir/perftest.c.o.requires
perf/CMakeFiles/perftest.dir/requires: perf/CMakeFiles/perftest.dir/documents.c.o.requires

.PHONY : perf/CMakeFiles/perftest.dir/requires

perf/CMakeFiles/perftest.dir/clean:
	cd /home/drgrid/lightning/hardwared/yajl/perf && $(CMAKE_COMMAND) -P CMakeFiles/perftest.dir/cmake_clean.cmake
.PHONY : perf/CMakeFiles/perftest.dir/clean

perf/CMakeFiles/perftest.dir/depend:
	cd /home/drgrid/lightning/hardwared/yajl && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/drgrid/lightning/hardwared/yajl /home/drgrid/lightning/hardwared/yajl/perf /home/drgrid/lightning/hardwared/yajl /home/drgrid/lightning/hardwared/yajl/perf /home/drgrid/lightning/hardwared/yajl/perf/CMakeFiles/perftest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : perf/CMakeFiles/perftest.dir/depend

