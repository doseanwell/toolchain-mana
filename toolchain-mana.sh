#!/bin/bash
if [ -z $1 ]; then
	echo "Fail:  You must specify one parameter!"
	echo "Example:  gxx_config.sh config "
	exit 1
fi

if [ "$1" = "config" ]; then
	if [ -z $2 ]; then
		echo "Fail:  You must specify one parameter!"
		echo "Example:  gxx_config.sh config gcc_type "
		exit 1
	fi
	if [ "$2" = "arm-linux-gnueabihf-" ];then
		type=$2
	fi
	if [ "$2" = "gcc" ];then
		type=
	fi
	sudo update-alternatives --config ${type}gcc
	sudo update-alternatives --config ${type}g++
	sudo update-alternatives --config ${type}ar
	sudo update-alternatives --config ${type}ld
	sudo update-alternatives --config ${type}readelf
	sudo update-alternatives --config ${type}ranlib
	sudo update-alternatives --config ${type}nm
	sudo update-alternatives --config ${type}objcopy
	sudo update-alternatives --config ${type}objdump
	sudo update-alternatives --config ${type}size
	sudo update-alternatives --config ${type}strings
	sudo update-alternatives --config ${type}strip
	sudo update-alternatives --config ${type}gcov
	sudo update-alternatives --config ${type}gfortran
	sudo update-alternatives --config ${type}gprof
fi
if [ "$1" = "install" ]; then
	if [ -z $4 ]; then
		echo "Fail:  You must specify one parameter!"
		echo "Example:  gxx_config.sh install gcc_type gcc_path 50"
		exit 1
	fi
	if [ "$2" = "arm-linux-gnueabihf-" ];then
		type=$2
	fi
	if [ "$2" = "gcc" ];then
		type=
	fi
	sudo update-alternatives --install /usr/bin/${type}gcc 		${type}gcc 		$3/${type}gcc 		$4
	sudo update-alternatives --install /usr/bin/${type}g++ 		${type}g++ 		$3/${type}g++ 		$4
	sudo update-alternatives --install /usr/bin/${type}ar 		${type}ar 		$3/${type}ar 		$4
	sudo update-alternatives --install /usr/bin/${type}ld 		${type}ld 		$3/${type}ld 		$4
	sudo update-alternatives --install /usr/bin/${type}readelf 	${type}readelf 	$3/${type}readelf 	$4
	sudo update-alternatives --install /usr/bin/${type}ranlib 	${type}ranlib 	$3/${type}ranlib 	$4
	sudo update-alternatives --install /usr/bin/${type}nm 		${type}nm 		$3/${type}nm 		$4
	sudo update-alternatives --install /usr/bin/${type}objcopy 	${type}objcopy 	$3/${type}objcopy 	$4
	sudo update-alternatives --install /usr/bin/${type}objdump 	${type}objdump 	$3/${type}objdump 	$4
	sudo update-alternatives --install /usr/bin/${type}size 	${type}size 	$3/${type}size 		$4
	sudo update-alternatives --install /usr/bin/${type}strings 	${type}strings 	$3/${type}strings 	$4
	sudo update-alternatives --install /usr/bin/${type}strip 	${type}strip 	$3/${type}strip 	$4
	sudo update-alternatives --install /usr/bin/${type}gcov 	${type}gcov 	$3/${type}gcov 		$4
	sudo update-alternatives --install /usr/bin/${type}gfortran ${type}gfortran $3/${type}gfortran 	$4
	sudo update-alternatives --install /usr/bin/${type}gprof 	${type}gprof 	$3/${type}gprof 	$4
fi
if [ "$1" = "remove" ]; then
	if [ -z $3 ]; then
		echo "Fail:  You must specify one parameter!"
		echo "Example:  gxx_config.sh remove gcc_type gcc_path"
		exit 1
	fi
	if [ "$2" = "arm-linux-gnueabihf-" ];then
		type=$2
	fi
	if [ "$2" = "gcc" ];then
		type=
	fi
	sudo update-alternatives --remove ${type}gcc 		$3/${type}gcc
	sudo update-alternatives --remove ${type}g++ 		$3/${type}g++
	sudo update-alternatives --remove ${type}ar 		$3/${type}ar
	sudo update-alternatives --remove ${type}ld 		$3/${type}ld
	sudo update-alternatives --remove ${type}readelf	$3/${type}readelf
	sudo update-alternatives --remove ${type}ranlib		$3/${type}ranlib
	sudo update-alternatives --remove ${type}nm			$3/${type}nm
	sudo update-alternatives --remove ${type}objcopy	$3/${type}objcopy
	sudo update-alternatives --remove ${type}objdump	$3/${type}objdump
	sudo update-alternatives --remove ${type}size		$3/${type}size
	sudo update-alternatives --remove ${type}strings	$3/${type}strings
	sudo update-alternatives --remove ${type}strip		$3/${type}strip
	sudo update-alternatives --remove ${type}gcov		$3/${type}gcov
	sudo update-alternatives --remove ${type}gfortran	$3/${type}gfortran
	sudo update-alternatives --remove ${type}gprof		$3/${type}gprof	
fi
