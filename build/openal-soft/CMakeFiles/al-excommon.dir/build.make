# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build

# Include any dependencies generated for this target.
include openal-soft/CMakeFiles/al-excommon.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include openal-soft/CMakeFiles/al-excommon.dir/compiler_depend.make

# Include the progress variables for this target.
include openal-soft/CMakeFiles/al-excommon.dir/progress.make

# Include the compile flags for this target's objects.
include openal-soft/CMakeFiles/al-excommon.dir/flags.make

openal-soft/CMakeFiles/al-excommon.dir/examples/common/alhelpers.c.o: openal-soft/CMakeFiles/al-excommon.dir/flags.make
openal-soft/CMakeFiles/al-excommon.dir/examples/common/alhelpers.c.o: /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/examples/common/alhelpers.c
openal-soft/CMakeFiles/al-excommon.dir/examples/common/alhelpers.c.o: openal-soft/CMakeFiles/al-excommon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object openal-soft/CMakeFiles/al-excommon.dir/examples/common/alhelpers.c.o"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT openal-soft/CMakeFiles/al-excommon.dir/examples/common/alhelpers.c.o -MF CMakeFiles/al-excommon.dir/examples/common/alhelpers.c.o.d -o CMakeFiles/al-excommon.dir/examples/common/alhelpers.c.o -c /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/examples/common/alhelpers.c

openal-soft/CMakeFiles/al-excommon.dir/examples/common/alhelpers.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/al-excommon.dir/examples/common/alhelpers.c.i"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/examples/common/alhelpers.c > CMakeFiles/al-excommon.dir/examples/common/alhelpers.c.i

openal-soft/CMakeFiles/al-excommon.dir/examples/common/alhelpers.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/al-excommon.dir/examples/common/alhelpers.c.s"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/examples/common/alhelpers.c -o CMakeFiles/al-excommon.dir/examples/common/alhelpers.c.s

# Object files for target al-excommon
al__excommon_OBJECTS = \
"CMakeFiles/al-excommon.dir/examples/common/alhelpers.c.o"

# External object files for target al-excommon
al__excommon_EXTERNAL_OBJECTS =

openal-soft/libal-excommon.a: openal-soft/CMakeFiles/al-excommon.dir/examples/common/alhelpers.c.o
openal-soft/libal-excommon.a: openal-soft/CMakeFiles/al-excommon.dir/build.make
openal-soft/libal-excommon.a: openal-soft/CMakeFiles/al-excommon.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libal-excommon.a"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft && $(CMAKE_COMMAND) -P CMakeFiles/al-excommon.dir/cmake_clean_target.cmake
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/al-excommon.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
openal-soft/CMakeFiles/al-excommon.dir/build: openal-soft/libal-excommon.a
.PHONY : openal-soft/CMakeFiles/al-excommon.dir/build

openal-soft/CMakeFiles/al-excommon.dir/clean:
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft && $(CMAKE_COMMAND) -P CMakeFiles/al-excommon.dir/cmake_clean.cmake
.PHONY : openal-soft/CMakeFiles/al-excommon.dir/clean

openal-soft/CMakeFiles/al-excommon.dir/depend:
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/CMakeFiles/al-excommon.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : openal-soft/CMakeFiles/al-excommon.dir/depend
