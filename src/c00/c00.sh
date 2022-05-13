#!/bin/sh

test_ex00()
{
	local EX_NAME="ft_putchar"
	local EX_PATH="c00/ex00"
	local VALID_RES="!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_\`abcdefghijklmnopqrstuvwxyz{|}~"

	generc_test $EX_NAME $EX_PATH $VALID_RES 
}

test_ex01()
{
	# Setup
	local EX_NAME="ft_print_alphabet"
	local EX_PATH="c00/ex01"
	local VALID_RES="abcdefghijklmnopqrstuvwxyz"

	generc_test $EX_NAME $EX_PATH $VALID_RES 
}

test_ex02()
{
	# Setup
	local EX_NAME="ft_print_reverse_alphabet"
	local EX_PATH="c00/ex02"
	local VALID_RES="zyxwvutsrqponmlkjihgfedcba"

	generc_test $EX_NAME $EX_PATH $VALID_RES 
}

test_c00()
{
	local PROJECT_NAME="c00"

	print_start_project $PROJECT_NAME

	test_ex00
	test_ex01
	test_ex02
}

generc_test()
{
	# Setup
	local EX_NAME=$1
	local EX_PATH=$2
	local VALID_RES=$3

	check_norm $USER_REPO_PATH/$EX_PATH
	if [ $IS_NORME -eq 1 ]; then
		print_norm_error $EX_NAME

		return
	fi

	compile_tests $CURRENT_DIR/src/$EX_PATH/main.c $USER_REPO_PATH/$EX_PATH/$EX_NAME.c
	if [ $IS_COMPLIE -eq 1 ]; then
		print_compile_error $EX_NAME

		return
	fi

	# Test
	local USER_OUTPUT=$(./a.out)

	if [ "$VALID_RES" != "$USER_OUTPUT" ]; then
		print_fail $EX_NAME $VALID_RES $USER_OUTPUT
	else
		print_success $EX_NAME
	fi

	# Clean
	clean_test
}
