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
include openal-soft/CMakeFiles/uhjdecoder.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include openal-soft/CMakeFiles/uhjdecoder.dir/compiler_depend.make

# Include the progress variables for this target.
include openal-soft/CMakeFiles/uhjdecoder.dir/progress.make

# Include the compile flags for this target's objects.
include openal-soft/CMakeFiles/uhjdecoder.dir/flags.make

openal-soft/CMakeFiles/uhjdecoder.dir/utils/uhjdecoder.cpp.o: openal-soft/CMakeFiles/uhjdecoder.dir/flags.make
openal-soft/CMakeFiles/uhjdecoder.dir/utils/uhjdecoder.cpp.o: /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/utils/uhjdecoder.cpp
openal-soft/CMakeFiles/uhjdecoder.dir/utils/uhjdecoder.cpp.o: openal-soft/CMakeFiles/uhjdecoder.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object openal-soft/CMakeFiles/uhjdecoder.dir/utils/uhjdecoder.cpp.o"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT openal-soft/CMakeFiles/uhjdecoder.dir/utils/uhjdecoder.cpp.o -MF CMakeFiles/uhjdecoder.dir/utils/uhjdecoder.cpp.o.d -o CMakeFiles/uhjdecoder.dir/utils/uhjdecoder.cpp.o -c /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/utils/uhjdecoder.cpp

openal-soft/CMakeFiles/uhjdecoder.dir/utils/uhjdecoder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/uhjdecoder.dir/utils/uhjdecoder.cpp.i"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/utils/uhjdecoder.cpp > CMakeFiles/uhjdecoder.dir/utils/uhjdecoder.cpp.i

openal-soft/CMakeFiles/uhjdecoder.dir/utils/uhjdecoder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/uhjdecoder.dir/utils/uhjdecoder.cpp.s"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/utils/uhjdecoder.cpp -o CMakeFiles/uhjdecoder.dir/utils/uhjdecoder.cpp.s

# Object files for target uhjdecoder
uhjdecoder_OBJECTS = \
"CMakeFiles/uhjdecoder.dir/utils/uhjdecoder.cpp.o"

# External object files for target uhjdecoder
uhjdecoder_EXTERNAL_OBJECTS =

openal-soft/uhjdecoder: openal-soft/CMakeFiles/uhjdecoder.dir/utils/uhjdecoder.cpp.o
openal-soft/uhjdecoder: openal-soft/CMakeFiles/uhjdecoder.dir/build.make
openal-soft/uhjdecoder: openal-soft/libalcommon.a
openal-soft/uhjdecoder: /usr/lib/libsndfile.so
openal-soft/uhjdecoder: openal-soft/CMakeFiles/uhjdecoder.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable uhjdecoder"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/uhjdecoder.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
openal-soft/CMakeFiles/uhjdecoder.dir/build: openal-soft/uhjdecoder
.PHONY : openal-soft/CMakeFiles/uhjdecoder.dir/build

openal-soft/CMakeFiles/uhjdecoder.dir/clean:
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft && $(CMAKE_COMMAND) -P CMakeFiles/uhjdecoder.dir/cmake_clean.cmake
.PHONY : openal-soft/CMakeFiles/uhjdecoder.dir/clean

openal-soft/CMakeFiles/uhjdecoder.dir/depend:
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/CMakeFiles/uhjdecoder.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : openal-soft/CMakeFiles/uhjdecoder.dir/depend
