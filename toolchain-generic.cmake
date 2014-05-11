########################################################################
# Experimental CMake build script.
# Ref to: http://www.cmake.org/Wiki/CMake_Cross_Compiling
########################################################################
set(CMAKE_SYSTEM_NAME Linux)
#this one not so much
set(CMAKE_SYSTEM_VERSION 1)

# specify the cross compiler
if(NOT "$ENV{CC}" STREQUAL "" AND NOT "$ENV{CXX}" STREQUAL "")
	set(CMAKE_C_COMPILER "$ENV{CC}")
	set(CMAKE_CXX_COMPILER "$ENV{CXX}")
elseif(NOT "$ENV{CROSSCOMPILE_PREFIX}" STREQUAL "")
	set(CMAKE_C_COMPILER "$ENV{CROSSCOMPILE_PREFIX}-gcc")
	set(CMAKE_CXX_COMPILER "$ENV{CROSSCOMPILE_PREFIX}-g++")
endif()
