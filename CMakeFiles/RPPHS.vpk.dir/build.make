# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rob/Projects/RPPHS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rob/Projects/RPPHS

# Utility rule file for RPPHS.vpk.

# Include the progress variables for this target.
include CMakeFiles/RPPHS.vpk.dir/progress.make

CMakeFiles/RPPHS.vpk: RPPHS.vpk_param.sfo
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/rob/Projects/RPPHS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building vpk RPPHS.vpk"
	/usr/local/vitasdk/bin/vita-pack-vpk -a /home/rob/Projects/RPPHS/images/gary.png=images/gary.png -a /home/rob/Projects/RPPHS/images/karen.png=images/karen.png -a /home/rob/Projects/RPPHS/images/jeff.png=images/jeff.png -a /home/rob/Projects/RPPHS/images/player.png=images/player.png -a /home/rob/Projects/RPPHS/images/Grid3.png=images/Grid3.png -a /home/rob/Projects/RPPHS/images/bullet.png=images/bullet.png -a /home/rob/Projects/RPPHS/images/cross.png=images/cross.png -a /home/rob/Projects/RPPHS/images/circle.png=images/circle.png -a /home/rob/Projects/RPPHS/images/triangle.png=images/triangle.png -a /home/rob/Projects/RPPHS/images/cursor-crosshair.png=images/cursor-crosshair.png -a /home/rob/Projects/RPPHS/images/cursor-duck.png=images/cursor-duck.png -a /home/rob/Projects/RPPHS/images/cursor-watcher.png=images/cursor-watcher.png -a /home/rob/Projects/RPPHS/images/cursor1.png=images/cursor1.png -a /home/rob/Projects/RPPHS/images/cursor2.png=images/cursor2.png -a /home/rob/Projects/RPPHS/images/saveImage.png=images/saveImage.png -a /home/rob/Projects/RPPHS/images/snakeImage1.png=images/snakeImage1.png -a /home/rob/Projects/RPPHS/images/snakeImage2.png=images/snakeImage2.png -a /home/rob/Projects/RPPHS/sounds/blaster.wav=sounds/blaster.wav -a /home/rob/Projects/RPPHS/sounds/exp.wav=sounds/exp1.wav -a /home/rob/Projects/RPPHS/sounds/OutThere.ogg=sounds/OutThere.ogg -a /home/rob/Projects/RPPHS/sounds/HeroImmortal.ogg=sounds/HeroImmortal.ogg -a /home/rob/Projects/RPPHS/sce_sys/icon0.png=sce_sys/icon0.png -a /home/rob/Projects/RPPHS/sce_sys/pic0.png=sce_sys/pic0.png -a /home/rob/Projects/RPPHS/sce_sys/livearea/contents/bg.png=sce_sys/livearea/contents/bg.png -a /home/rob/Projects/RPPHS/sce_sys/livearea/contents/startup.png=sce_sys/livearea/contents/startup.png -a /home/rob/Projects/RPPHS/sce_sys/livearea/contents/template.xml=sce_sys/livearea/contents/template.xml -s RPPHS.vpk_param.sfo -b RPPHS.self RPPHS.vpk

RPPHS.vpk_param.sfo:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/rob/Projects/RPPHS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating param.sfo for RPPHS.vpk"
	/usr/local/vitasdk/bin/vita-mksfoex -s APP_VER=02.50 -s TITLE_ID=VGEE00001 RPPHS RPPHS.vpk_param.sfo

RPPHS.vpk: CMakeFiles/RPPHS.vpk
RPPHS.vpk: RPPHS.vpk_param.sfo
RPPHS.vpk: CMakeFiles/RPPHS.vpk.dir/build.make

.PHONY : RPPHS.vpk

# Rule to build all files generated by this target.
CMakeFiles/RPPHS.vpk.dir/build: RPPHS.vpk

.PHONY : CMakeFiles/RPPHS.vpk.dir/build

CMakeFiles/RPPHS.vpk.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RPPHS.vpk.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RPPHS.vpk.dir/clean

CMakeFiles/RPPHS.vpk.dir/depend:
	cd /home/rob/Projects/RPPHS && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rob/Projects/RPPHS /home/rob/Projects/RPPHS /home/rob/Projects/RPPHS /home/rob/Projects/RPPHS /home/rob/Projects/RPPHS/CMakeFiles/RPPHS.vpk.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/RPPHS.vpk.dir/depend
