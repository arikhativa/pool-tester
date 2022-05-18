#!/bin/bash

run_with_valgrind()
{
	valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --log-file=$VALGRIND_OUTPUT $EXEC_FIEL > $USER_RES
	if [ "$VALGRIND_OUTPUT" == "" ] ; then
		IS_VALGRIND=1
	else
		IS_VALGRIND=1

		print_valgrind_error
	fi
}

is_valgrind_installed()
{
	local OUT_PUT=$(command -v valgrind)

	if [ "$OUT_PUT" == "" ] ; then
		IS_VALGRIND_INSTALLED=$ERROR
		print_valgrind_not_installed
	fi
}
