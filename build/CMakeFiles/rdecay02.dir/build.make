# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.26.3/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.26.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jackxu/Neutrinos/v2/rdecay02

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jackxu/Neutrinos/v2/rdecay02/build

# Include any dependencies generated for this target.
include CMakeFiles/rdecay02.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/rdecay02.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/rdecay02.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rdecay02.dir/flags.make

CMakeFiles/rdecay02.dir/rdecay02.cc.o: CMakeFiles/rdecay02.dir/flags.make
CMakeFiles/rdecay02.dir/rdecay02.cc.o: /Users/jackxu/Neutrinos/v2/rdecay02/rdecay02.cc
CMakeFiles/rdecay02.dir/rdecay02.cc.o: CMakeFiles/rdecay02.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jackxu/Neutrinos/v2/rdecay02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rdecay02.dir/rdecay02.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rdecay02.dir/rdecay02.cc.o -MF CMakeFiles/rdecay02.dir/rdecay02.cc.o.d -o CMakeFiles/rdecay02.dir/rdecay02.cc.o -c /Users/jackxu/Neutrinos/v2/rdecay02/rdecay02.cc

CMakeFiles/rdecay02.dir/rdecay02.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay02.dir/rdecay02.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jackxu/Neutrinos/v2/rdecay02/rdecay02.cc > CMakeFiles/rdecay02.dir/rdecay02.cc.i

CMakeFiles/rdecay02.dir/rdecay02.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay02.dir/rdecay02.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jackxu/Neutrinos/v2/rdecay02/rdecay02.cc -o CMakeFiles/rdecay02.dir/rdecay02.cc.s

CMakeFiles/rdecay02.dir/src/ActionInitialization.cc.o: CMakeFiles/rdecay02.dir/flags.make
CMakeFiles/rdecay02.dir/src/ActionInitialization.cc.o: /Users/jackxu/Neutrinos/v2/rdecay02/src/ActionInitialization.cc
CMakeFiles/rdecay02.dir/src/ActionInitialization.cc.o: CMakeFiles/rdecay02.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jackxu/Neutrinos/v2/rdecay02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/rdecay02.dir/src/ActionInitialization.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rdecay02.dir/src/ActionInitialization.cc.o -MF CMakeFiles/rdecay02.dir/src/ActionInitialization.cc.o.d -o CMakeFiles/rdecay02.dir/src/ActionInitialization.cc.o -c /Users/jackxu/Neutrinos/v2/rdecay02/src/ActionInitialization.cc

CMakeFiles/rdecay02.dir/src/ActionInitialization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay02.dir/src/ActionInitialization.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jackxu/Neutrinos/v2/rdecay02/src/ActionInitialization.cc > CMakeFiles/rdecay02.dir/src/ActionInitialization.cc.i

CMakeFiles/rdecay02.dir/src/ActionInitialization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay02.dir/src/ActionInitialization.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jackxu/Neutrinos/v2/rdecay02/src/ActionInitialization.cc -o CMakeFiles/rdecay02.dir/src/ActionInitialization.cc.s

CMakeFiles/rdecay02.dir/src/DetectorConstruction.cc.o: CMakeFiles/rdecay02.dir/flags.make
CMakeFiles/rdecay02.dir/src/DetectorConstruction.cc.o: /Users/jackxu/Neutrinos/v2/rdecay02/src/DetectorConstruction.cc
CMakeFiles/rdecay02.dir/src/DetectorConstruction.cc.o: CMakeFiles/rdecay02.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jackxu/Neutrinos/v2/rdecay02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/rdecay02.dir/src/DetectorConstruction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rdecay02.dir/src/DetectorConstruction.cc.o -MF CMakeFiles/rdecay02.dir/src/DetectorConstruction.cc.o.d -o CMakeFiles/rdecay02.dir/src/DetectorConstruction.cc.o -c /Users/jackxu/Neutrinos/v2/rdecay02/src/DetectorConstruction.cc

CMakeFiles/rdecay02.dir/src/DetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay02.dir/src/DetectorConstruction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jackxu/Neutrinos/v2/rdecay02/src/DetectorConstruction.cc > CMakeFiles/rdecay02.dir/src/DetectorConstruction.cc.i

CMakeFiles/rdecay02.dir/src/DetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay02.dir/src/DetectorConstruction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jackxu/Neutrinos/v2/rdecay02/src/DetectorConstruction.cc -o CMakeFiles/rdecay02.dir/src/DetectorConstruction.cc.s

CMakeFiles/rdecay02.dir/src/DetectorMessenger.cc.o: CMakeFiles/rdecay02.dir/flags.make
CMakeFiles/rdecay02.dir/src/DetectorMessenger.cc.o: /Users/jackxu/Neutrinos/v2/rdecay02/src/DetectorMessenger.cc
CMakeFiles/rdecay02.dir/src/DetectorMessenger.cc.o: CMakeFiles/rdecay02.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jackxu/Neutrinos/v2/rdecay02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/rdecay02.dir/src/DetectorMessenger.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rdecay02.dir/src/DetectorMessenger.cc.o -MF CMakeFiles/rdecay02.dir/src/DetectorMessenger.cc.o.d -o CMakeFiles/rdecay02.dir/src/DetectorMessenger.cc.o -c /Users/jackxu/Neutrinos/v2/rdecay02/src/DetectorMessenger.cc

CMakeFiles/rdecay02.dir/src/DetectorMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay02.dir/src/DetectorMessenger.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jackxu/Neutrinos/v2/rdecay02/src/DetectorMessenger.cc > CMakeFiles/rdecay02.dir/src/DetectorMessenger.cc.i

CMakeFiles/rdecay02.dir/src/DetectorMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay02.dir/src/DetectorMessenger.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jackxu/Neutrinos/v2/rdecay02/src/DetectorMessenger.cc -o CMakeFiles/rdecay02.dir/src/DetectorMessenger.cc.s

CMakeFiles/rdecay02.dir/src/EventAction.cc.o: CMakeFiles/rdecay02.dir/flags.make
CMakeFiles/rdecay02.dir/src/EventAction.cc.o: /Users/jackxu/Neutrinos/v2/rdecay02/src/EventAction.cc
CMakeFiles/rdecay02.dir/src/EventAction.cc.o: CMakeFiles/rdecay02.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jackxu/Neutrinos/v2/rdecay02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/rdecay02.dir/src/EventAction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rdecay02.dir/src/EventAction.cc.o -MF CMakeFiles/rdecay02.dir/src/EventAction.cc.o.d -o CMakeFiles/rdecay02.dir/src/EventAction.cc.o -c /Users/jackxu/Neutrinos/v2/rdecay02/src/EventAction.cc

CMakeFiles/rdecay02.dir/src/EventAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay02.dir/src/EventAction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jackxu/Neutrinos/v2/rdecay02/src/EventAction.cc > CMakeFiles/rdecay02.dir/src/EventAction.cc.i

CMakeFiles/rdecay02.dir/src/EventAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay02.dir/src/EventAction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jackxu/Neutrinos/v2/rdecay02/src/EventAction.cc -o CMakeFiles/rdecay02.dir/src/EventAction.cc.s

CMakeFiles/rdecay02.dir/src/HistoManager.cc.o: CMakeFiles/rdecay02.dir/flags.make
CMakeFiles/rdecay02.dir/src/HistoManager.cc.o: /Users/jackxu/Neutrinos/v2/rdecay02/src/HistoManager.cc
CMakeFiles/rdecay02.dir/src/HistoManager.cc.o: CMakeFiles/rdecay02.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jackxu/Neutrinos/v2/rdecay02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/rdecay02.dir/src/HistoManager.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rdecay02.dir/src/HistoManager.cc.o -MF CMakeFiles/rdecay02.dir/src/HistoManager.cc.o.d -o CMakeFiles/rdecay02.dir/src/HistoManager.cc.o -c /Users/jackxu/Neutrinos/v2/rdecay02/src/HistoManager.cc

CMakeFiles/rdecay02.dir/src/HistoManager.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay02.dir/src/HistoManager.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jackxu/Neutrinos/v2/rdecay02/src/HistoManager.cc > CMakeFiles/rdecay02.dir/src/HistoManager.cc.i

CMakeFiles/rdecay02.dir/src/HistoManager.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay02.dir/src/HistoManager.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jackxu/Neutrinos/v2/rdecay02/src/HistoManager.cc -o CMakeFiles/rdecay02.dir/src/HistoManager.cc.s

CMakeFiles/rdecay02.dir/src/PhysicsList.cc.o: CMakeFiles/rdecay02.dir/flags.make
CMakeFiles/rdecay02.dir/src/PhysicsList.cc.o: /Users/jackxu/Neutrinos/v2/rdecay02/src/PhysicsList.cc
CMakeFiles/rdecay02.dir/src/PhysicsList.cc.o: CMakeFiles/rdecay02.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jackxu/Neutrinos/v2/rdecay02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/rdecay02.dir/src/PhysicsList.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rdecay02.dir/src/PhysicsList.cc.o -MF CMakeFiles/rdecay02.dir/src/PhysicsList.cc.o.d -o CMakeFiles/rdecay02.dir/src/PhysicsList.cc.o -c /Users/jackxu/Neutrinos/v2/rdecay02/src/PhysicsList.cc

CMakeFiles/rdecay02.dir/src/PhysicsList.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay02.dir/src/PhysicsList.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jackxu/Neutrinos/v2/rdecay02/src/PhysicsList.cc > CMakeFiles/rdecay02.dir/src/PhysicsList.cc.i

CMakeFiles/rdecay02.dir/src/PhysicsList.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay02.dir/src/PhysicsList.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jackxu/Neutrinos/v2/rdecay02/src/PhysicsList.cc -o CMakeFiles/rdecay02.dir/src/PhysicsList.cc.s

CMakeFiles/rdecay02.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/rdecay02.dir/flags.make
CMakeFiles/rdecay02.dir/src/PrimaryGeneratorAction.cc.o: /Users/jackxu/Neutrinos/v2/rdecay02/src/PrimaryGeneratorAction.cc
CMakeFiles/rdecay02.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/rdecay02.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jackxu/Neutrinos/v2/rdecay02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/rdecay02.dir/src/PrimaryGeneratorAction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rdecay02.dir/src/PrimaryGeneratorAction.cc.o -MF CMakeFiles/rdecay02.dir/src/PrimaryGeneratorAction.cc.o.d -o CMakeFiles/rdecay02.dir/src/PrimaryGeneratorAction.cc.o -c /Users/jackxu/Neutrinos/v2/rdecay02/src/PrimaryGeneratorAction.cc

CMakeFiles/rdecay02.dir/src/PrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay02.dir/src/PrimaryGeneratorAction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jackxu/Neutrinos/v2/rdecay02/src/PrimaryGeneratorAction.cc > CMakeFiles/rdecay02.dir/src/PrimaryGeneratorAction.cc.i

CMakeFiles/rdecay02.dir/src/PrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay02.dir/src/PrimaryGeneratorAction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jackxu/Neutrinos/v2/rdecay02/src/PrimaryGeneratorAction.cc -o CMakeFiles/rdecay02.dir/src/PrimaryGeneratorAction.cc.s

CMakeFiles/rdecay02.dir/src/Run.cc.o: CMakeFiles/rdecay02.dir/flags.make
CMakeFiles/rdecay02.dir/src/Run.cc.o: /Users/jackxu/Neutrinos/v2/rdecay02/src/Run.cc
CMakeFiles/rdecay02.dir/src/Run.cc.o: CMakeFiles/rdecay02.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jackxu/Neutrinos/v2/rdecay02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/rdecay02.dir/src/Run.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rdecay02.dir/src/Run.cc.o -MF CMakeFiles/rdecay02.dir/src/Run.cc.o.d -o CMakeFiles/rdecay02.dir/src/Run.cc.o -c /Users/jackxu/Neutrinos/v2/rdecay02/src/Run.cc

CMakeFiles/rdecay02.dir/src/Run.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay02.dir/src/Run.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jackxu/Neutrinos/v2/rdecay02/src/Run.cc > CMakeFiles/rdecay02.dir/src/Run.cc.i

CMakeFiles/rdecay02.dir/src/Run.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay02.dir/src/Run.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jackxu/Neutrinos/v2/rdecay02/src/Run.cc -o CMakeFiles/rdecay02.dir/src/Run.cc.s

CMakeFiles/rdecay02.dir/src/RunAction.cc.o: CMakeFiles/rdecay02.dir/flags.make
CMakeFiles/rdecay02.dir/src/RunAction.cc.o: /Users/jackxu/Neutrinos/v2/rdecay02/src/RunAction.cc
CMakeFiles/rdecay02.dir/src/RunAction.cc.o: CMakeFiles/rdecay02.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jackxu/Neutrinos/v2/rdecay02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/rdecay02.dir/src/RunAction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rdecay02.dir/src/RunAction.cc.o -MF CMakeFiles/rdecay02.dir/src/RunAction.cc.o.d -o CMakeFiles/rdecay02.dir/src/RunAction.cc.o -c /Users/jackxu/Neutrinos/v2/rdecay02/src/RunAction.cc

CMakeFiles/rdecay02.dir/src/RunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay02.dir/src/RunAction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jackxu/Neutrinos/v2/rdecay02/src/RunAction.cc > CMakeFiles/rdecay02.dir/src/RunAction.cc.i

CMakeFiles/rdecay02.dir/src/RunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay02.dir/src/RunAction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jackxu/Neutrinos/v2/rdecay02/src/RunAction.cc -o CMakeFiles/rdecay02.dir/src/RunAction.cc.s

CMakeFiles/rdecay02.dir/src/SteppingAction.cc.o: CMakeFiles/rdecay02.dir/flags.make
CMakeFiles/rdecay02.dir/src/SteppingAction.cc.o: /Users/jackxu/Neutrinos/v2/rdecay02/src/SteppingAction.cc
CMakeFiles/rdecay02.dir/src/SteppingAction.cc.o: CMakeFiles/rdecay02.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jackxu/Neutrinos/v2/rdecay02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/rdecay02.dir/src/SteppingAction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rdecay02.dir/src/SteppingAction.cc.o -MF CMakeFiles/rdecay02.dir/src/SteppingAction.cc.o.d -o CMakeFiles/rdecay02.dir/src/SteppingAction.cc.o -c /Users/jackxu/Neutrinos/v2/rdecay02/src/SteppingAction.cc

CMakeFiles/rdecay02.dir/src/SteppingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay02.dir/src/SteppingAction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jackxu/Neutrinos/v2/rdecay02/src/SteppingAction.cc > CMakeFiles/rdecay02.dir/src/SteppingAction.cc.i

CMakeFiles/rdecay02.dir/src/SteppingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay02.dir/src/SteppingAction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jackxu/Neutrinos/v2/rdecay02/src/SteppingAction.cc -o CMakeFiles/rdecay02.dir/src/SteppingAction.cc.s

CMakeFiles/rdecay02.dir/src/SteppingVerbose.cc.o: CMakeFiles/rdecay02.dir/flags.make
CMakeFiles/rdecay02.dir/src/SteppingVerbose.cc.o: /Users/jackxu/Neutrinos/v2/rdecay02/src/SteppingVerbose.cc
CMakeFiles/rdecay02.dir/src/SteppingVerbose.cc.o: CMakeFiles/rdecay02.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jackxu/Neutrinos/v2/rdecay02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/rdecay02.dir/src/SteppingVerbose.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rdecay02.dir/src/SteppingVerbose.cc.o -MF CMakeFiles/rdecay02.dir/src/SteppingVerbose.cc.o.d -o CMakeFiles/rdecay02.dir/src/SteppingVerbose.cc.o -c /Users/jackxu/Neutrinos/v2/rdecay02/src/SteppingVerbose.cc

CMakeFiles/rdecay02.dir/src/SteppingVerbose.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay02.dir/src/SteppingVerbose.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jackxu/Neutrinos/v2/rdecay02/src/SteppingVerbose.cc > CMakeFiles/rdecay02.dir/src/SteppingVerbose.cc.i

CMakeFiles/rdecay02.dir/src/SteppingVerbose.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay02.dir/src/SteppingVerbose.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jackxu/Neutrinos/v2/rdecay02/src/SteppingVerbose.cc -o CMakeFiles/rdecay02.dir/src/SteppingVerbose.cc.s

CMakeFiles/rdecay02.dir/src/TrackingAction.cc.o: CMakeFiles/rdecay02.dir/flags.make
CMakeFiles/rdecay02.dir/src/TrackingAction.cc.o: /Users/jackxu/Neutrinos/v2/rdecay02/src/TrackingAction.cc
CMakeFiles/rdecay02.dir/src/TrackingAction.cc.o: CMakeFiles/rdecay02.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jackxu/Neutrinos/v2/rdecay02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/rdecay02.dir/src/TrackingAction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/rdecay02.dir/src/TrackingAction.cc.o -MF CMakeFiles/rdecay02.dir/src/TrackingAction.cc.o.d -o CMakeFiles/rdecay02.dir/src/TrackingAction.cc.o -c /Users/jackxu/Neutrinos/v2/rdecay02/src/TrackingAction.cc

CMakeFiles/rdecay02.dir/src/TrackingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rdecay02.dir/src/TrackingAction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jackxu/Neutrinos/v2/rdecay02/src/TrackingAction.cc > CMakeFiles/rdecay02.dir/src/TrackingAction.cc.i

CMakeFiles/rdecay02.dir/src/TrackingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rdecay02.dir/src/TrackingAction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jackxu/Neutrinos/v2/rdecay02/src/TrackingAction.cc -o CMakeFiles/rdecay02.dir/src/TrackingAction.cc.s

# Object files for target rdecay02
rdecay02_OBJECTS = \
"CMakeFiles/rdecay02.dir/rdecay02.cc.o" \
"CMakeFiles/rdecay02.dir/src/ActionInitialization.cc.o" \
"CMakeFiles/rdecay02.dir/src/DetectorConstruction.cc.o" \
"CMakeFiles/rdecay02.dir/src/DetectorMessenger.cc.o" \
"CMakeFiles/rdecay02.dir/src/EventAction.cc.o" \
"CMakeFiles/rdecay02.dir/src/HistoManager.cc.o" \
"CMakeFiles/rdecay02.dir/src/PhysicsList.cc.o" \
"CMakeFiles/rdecay02.dir/src/PrimaryGeneratorAction.cc.o" \
"CMakeFiles/rdecay02.dir/src/Run.cc.o" \
"CMakeFiles/rdecay02.dir/src/RunAction.cc.o" \
"CMakeFiles/rdecay02.dir/src/SteppingAction.cc.o" \
"CMakeFiles/rdecay02.dir/src/SteppingVerbose.cc.o" \
"CMakeFiles/rdecay02.dir/src/TrackingAction.cc.o"

# External object files for target rdecay02
rdecay02_EXTERNAL_OBJECTS =

rdecay02: CMakeFiles/rdecay02.dir/rdecay02.cc.o
rdecay02: CMakeFiles/rdecay02.dir/src/ActionInitialization.cc.o
rdecay02: CMakeFiles/rdecay02.dir/src/DetectorConstruction.cc.o
rdecay02: CMakeFiles/rdecay02.dir/src/DetectorMessenger.cc.o
rdecay02: CMakeFiles/rdecay02.dir/src/EventAction.cc.o
rdecay02: CMakeFiles/rdecay02.dir/src/HistoManager.cc.o
rdecay02: CMakeFiles/rdecay02.dir/src/PhysicsList.cc.o
rdecay02: CMakeFiles/rdecay02.dir/src/PrimaryGeneratorAction.cc.o
rdecay02: CMakeFiles/rdecay02.dir/src/Run.cc.o
rdecay02: CMakeFiles/rdecay02.dir/src/RunAction.cc.o
rdecay02: CMakeFiles/rdecay02.dir/src/SteppingAction.cc.o
rdecay02: CMakeFiles/rdecay02.dir/src/SteppingVerbose.cc.o
rdecay02: CMakeFiles/rdecay02.dir/src/TrackingAction.cc.o
rdecay02: CMakeFiles/rdecay02.dir/build.make
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4Tree.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4FR.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4GMocren.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4visHepRep.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4RayTracer.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4VRML.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4ToolsSG.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4OpenGL.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4visQt3D.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4vis_management.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4modeling.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4interfaces.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4persistency.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4error_propagation.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4readout.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4physicslists.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4run.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4event.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4tracking.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4parmodels.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4processes.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4digits_hits.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4track.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4particles.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4geometry.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4materials.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4graphics_reps.dylib
rdecay02: /Library/Developer/CommandLineTools/SDKs/MacOSX13.1.sdk/System/Library/Frameworks/OpenGL.framework/OpenGL.tbd
rdecay02: /opt/homebrew/Cellar/qt@5/5.15.8_2/lib/QtOpenGL.framework/QtOpenGL
rdecay02: /opt/homebrew/Cellar/qt@5/5.15.8_2/lib/QtPrintSupport.framework/QtPrintSupport
rdecay02: /opt/homebrew/Cellar/qt@5/5.15.8_2/lib/QtWidgets.framework/QtWidgets
rdecay02: /opt/homebrew/Cellar/qt@5/5.15.8_2/lib/Qt3DExtras.framework/Qt3DExtras
rdecay02: /opt/homebrew/Cellar/qt@5/5.15.8_2/lib/Qt3DInput.framework/Qt3DInput
rdecay02: /opt/homebrew/Cellar/qt@5/5.15.8_2/lib/QtGamepad.framework/QtGamepad
rdecay02: /opt/homebrew/Cellar/qt@5/5.15.8_2/lib/Qt3DLogic.framework/Qt3DLogic
rdecay02: /opt/homebrew/Cellar/qt@5/5.15.8_2/lib/Qt3DRender.framework/Qt3DRender
rdecay02: /opt/homebrew/Cellar/qt@5/5.15.8_2/lib/Qt3DCore.framework/Qt3DCore
rdecay02: /opt/homebrew/Cellar/qt@5/5.15.8_2/lib/QtGui.framework/QtGui
rdecay02: /opt/homebrew/Cellar/qt@5/5.15.8_2/lib/QtNetwork.framework/QtNetwork
rdecay02: /opt/homebrew/Cellar/qt@5/5.15.8_2/lib/QtCore.framework/QtCore
rdecay02: /opt/homebrew/Cellar/xerces-c/3.2.4_1/lib/libxerces-c.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4analysis.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4expat.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4zlib.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4intercoms.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4global.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4clhep.dylib
rdecay02: /Users/jackxu/Neutrinos/geant4-v11.1.0-install/lib/libG4ptl.2.3.3.dylib
rdecay02: CMakeFiles/rdecay02.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jackxu/Neutrinos/v2/rdecay02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable rdecay02"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rdecay02.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rdecay02.dir/build: rdecay02
.PHONY : CMakeFiles/rdecay02.dir/build

CMakeFiles/rdecay02.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rdecay02.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rdecay02.dir/clean

CMakeFiles/rdecay02.dir/depend:
	cd /Users/jackxu/Neutrinos/v2/rdecay02/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jackxu/Neutrinos/v2/rdecay02 /Users/jackxu/Neutrinos/v2/rdecay02 /Users/jackxu/Neutrinos/v2/rdecay02/build /Users/jackxu/Neutrinos/v2/rdecay02/build /Users/jackxu/Neutrinos/v2/rdecay02/build/CMakeFiles/rdecay02.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rdecay02.dir/depend
