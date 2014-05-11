cmake_minimum_required(VERSION 2.8)
project(gcc_mips)
add_definitions(-DFIRST_PSEUDO_REGISTER=188)
add_definitions(-DSTACK_POINTER_REGNUM=29)
add_definitions(-DDWARF_ALT_FRAME_RETURN_COLUMN=66)
INCLUDE_DIRECTORIES(
	./config/mips/
	./external/build/gcc/
	./external/build/mipsel-linux-uclibc/libgcc/
	./external/gcc/
	./external/gcc/config/mips/
	./external/include/
)
AUX_SOURCE_DIRECTORY(. SRC_LIST)
add_library(${PROJECT_NAME} SHARED ${SRC_LIST})