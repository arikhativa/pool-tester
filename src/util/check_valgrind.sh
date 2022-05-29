#!/bin/bash

run_with_valgrind()
{
	local EXEC=$1

	valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --log-file=$VALGRIND_OUTPUT ./$EXEC > $USER_RES

	local TT=$(grep "ERROR SUMMARY:" $VALGRIND_OUTPUT | awk '{print $4}')

	if [ "$TT" == "0" ] ; then
		IS_VALGRIND=$SUCCESS
	else
		IS_VALGRIND=$ERROR
	fi
}

is_valgrind_installed()
{
	local OUT_PUT=$(command -v valgrind)

	if [ "$OUT_PUT" == "" ] ; then
		IS_VALGRIND_INSTALLED=$ERROR
		print_valgrind_not_installed
	else
		IS_VALGRIND_INSTALLED=$SUCCESS
	fi
}
