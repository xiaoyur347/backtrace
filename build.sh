build_libgcc()
{
	export CROSSCOMPILE_PREFIX=mipsel-linux
	rm -rf cmake_install.cmake CMakeCache.txt Makefile CMakeFiles
	cmake -DCMAKE_TOOLCHAIN_FILE=./toolchain-generic.cmake ./libgcc 
	make
}

build_libbacktrace()
{
	cd libbacktrace
	./configure --host=mipsel-linux --disable-static --enable-shared
	make
}

build_libgcc
build_libbacktrace