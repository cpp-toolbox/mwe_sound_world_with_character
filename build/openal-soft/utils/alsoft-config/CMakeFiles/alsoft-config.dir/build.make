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
include openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/compiler_depend.make

# Include the progress variables for this target.
include openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/progress.make

# Include the compile flags for this target's objects.
include openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/flags.make

openal-soft/utils/alsoft-config/ui_mainwindow.h: /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/utils/alsoft-config/mainwindow.ui
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ui_mainwindow.h"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config && /usr/bin/uic -o /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config/ui_mainwindow.h /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/utils/alsoft-config/mainwindow.ui

openal-soft/utils/alsoft-config/moc_mainwindow.cpp: /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/utils/alsoft-config/mainwindow.h
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating moc_mainwindow.cpp"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config && /usr/bin/moc @/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config/moc_mainwindow.cpp_parameters

openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/main.cpp.o: openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/flags.make
openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/main.cpp.o: /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/utils/alsoft-config/main.cpp
openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/main.cpp.o: openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/main.cpp.o"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/main.cpp.o -MF CMakeFiles/alsoft-config.dir/main.cpp.o.d -o CMakeFiles/alsoft-config.dir/main.cpp.o -c /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/utils/alsoft-config/main.cpp

openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/alsoft-config.dir/main.cpp.i"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/utils/alsoft-config/main.cpp > CMakeFiles/alsoft-config.dir/main.cpp.i

openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/alsoft-config.dir/main.cpp.s"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/utils/alsoft-config/main.cpp -o CMakeFiles/alsoft-config.dir/main.cpp.s

openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/mainwindow.cpp.o: openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/flags.make
openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/mainwindow.cpp.o: /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/utils/alsoft-config/mainwindow.cpp
openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/mainwindow.cpp.o: openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/mainwindow.cpp.o"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/mainwindow.cpp.o -MF CMakeFiles/alsoft-config.dir/mainwindow.cpp.o.d -o CMakeFiles/alsoft-config.dir/mainwindow.cpp.o -c /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/utils/alsoft-config/mainwindow.cpp

openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/mainwindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/alsoft-config.dir/mainwindow.cpp.i"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/utils/alsoft-config/mainwindow.cpp > CMakeFiles/alsoft-config.dir/mainwindow.cpp.i

openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/mainwindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/alsoft-config.dir/mainwindow.cpp.s"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/utils/alsoft-config/mainwindow.cpp -o CMakeFiles/alsoft-config.dir/mainwindow.cpp.s

openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/verstr.cpp.o: openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/flags.make
openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/verstr.cpp.o: /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/utils/alsoft-config/verstr.cpp
openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/verstr.cpp.o: openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/verstr.cpp.o"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/verstr.cpp.o -MF CMakeFiles/alsoft-config.dir/verstr.cpp.o.d -o CMakeFiles/alsoft-config.dir/verstr.cpp.o -c /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/utils/alsoft-config/verstr.cpp

openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/verstr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/alsoft-config.dir/verstr.cpp.i"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/utils/alsoft-config/verstr.cpp > CMakeFiles/alsoft-config.dir/verstr.cpp.i

openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/verstr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/alsoft-config.dir/verstr.cpp.s"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/utils/alsoft-config/verstr.cpp -o CMakeFiles/alsoft-config.dir/verstr.cpp.s

openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/moc_mainwindow.cpp.o: openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/flags.make
openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/moc_mainwindow.cpp.o: openal-soft/utils/alsoft-config/moc_mainwindow.cpp
openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/moc_mainwindow.cpp.o: openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/moc_mainwindow.cpp.o"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/moc_mainwindow.cpp.o -MF CMakeFiles/alsoft-config.dir/moc_mainwindow.cpp.o.d -o CMakeFiles/alsoft-config.dir/moc_mainwindow.cpp.o -c /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config/moc_mainwindow.cpp

openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/moc_mainwindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/alsoft-config.dir/moc_mainwindow.cpp.i"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config/moc_mainwindow.cpp > CMakeFiles/alsoft-config.dir/moc_mainwindow.cpp.i

openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/moc_mainwindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/alsoft-config.dir/moc_mainwindow.cpp.s"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config/moc_mainwindow.cpp -o CMakeFiles/alsoft-config.dir/moc_mainwindow.cpp.s

# Object files for target alsoft-config
alsoft__config_OBJECTS = \
"CMakeFiles/alsoft-config.dir/main.cpp.o" \
"CMakeFiles/alsoft-config.dir/mainwindow.cpp.o" \
"CMakeFiles/alsoft-config.dir/verstr.cpp.o" \
"CMakeFiles/alsoft-config.dir/moc_mainwindow.cpp.o"

# External object files for target alsoft-config
alsoft__config_EXTERNAL_OBJECTS =

openal-soft/alsoft-config: openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/main.cpp.o
openal-soft/alsoft-config: openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/mainwindow.cpp.o
openal-soft/alsoft-config: openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/verstr.cpp.o
openal-soft/alsoft-config: openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/moc_mainwindow.cpp.o
openal-soft/alsoft-config: openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/build.make
openal-soft/alsoft-config: /usr/lib/libQt5Widgets.so.5.15.12
openal-soft/alsoft-config: openal-soft/libalcommon.a
openal-soft/alsoft-config: /usr/lib/libQt5Gui.so.5.15.12
openal-soft/alsoft-config: /usr/lib/libQt5Core.so.5.15.12
openal-soft/alsoft-config: openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable ../../alsoft-config"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/alsoft-config.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/build: openal-soft/alsoft-config
.PHONY : openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/build

openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/clean:
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config && $(CMAKE_COMMAND) -P CMakeFiles/alsoft-config.dir/cmake_clean.cmake
.PHONY : openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/clean

openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/depend: openal-soft/utils/alsoft-config/moc_mainwindow.cpp
openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/depend: openal-soft/utils/alsoft-config/ui_mainwindow.h
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/openal-soft/utils/alsoft-config /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : openal-soft/utils/alsoft-config/CMakeFiles/alsoft-config.dir/depend
