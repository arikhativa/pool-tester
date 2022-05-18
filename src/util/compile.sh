#!/bin/bash

compile_tests()
{
	local MAIN=$1
	local USR_SRC=$2

	local err_msg=$(gcc -Wall -Werror -Wextra $MAIN $USR_SRC)
	
	if [ ! -e $EXEC_FIEL ] ; then
		IS_COMPLIE=$ERROR
	else
		IS_COMPLIE=$SUCCESS
	fi
}