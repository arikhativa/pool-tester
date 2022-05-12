#!/bin/sh

compile_tests()
{
	local MAIN=$1
	local USR_SRC=$2

	local err_msg=$(gcc -Wall -Werror -Wextra $MAIN $USR_SRC)
	
	if [ ! -e a.out ] ; then
		IS_COMPLIE=1
	else
		IS_COMPLIE=0
	fi
}