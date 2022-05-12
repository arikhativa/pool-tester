#!/bin/sh

compile_tests()
{
	local MAIN=$1
	local USR_SRC=$2

	local err_msg=$(gcc -Wall -Werror -Wextra $MAIN $USR_SRC)
	
	if [ ! -e a.out ] ; then
		echo "\nFailed to compile: $USR_SRC"
		echo "error:\n\t$err_msg"
	fi
}