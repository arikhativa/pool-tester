#!/bin/sh

test_ex00()
{
	# Setup
	local EX_NAME="ft_putchar"
	local EX_PATH="c00/ex00"

	print_start_test $EX_NAME

	compile_tests $CURRENT_DIR/src/$EX_PATH/main.c $USER_REPO_PATH/$EX_PATH/$EX_NAME.c
	if [ $IS_COMPLIE -eq 1 ]; then
		print_compile_error $EX_NAME

		return
	fi

	# Test
	local VALID_RES="!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_\`abcdefghijklmnopqrstuvwxyz{|}~"

	local USER_OUTPUT=$(./a.out)

	if [ "$VALID_RES" != "$USER_OUTPUT" ]; then
		print_fail $EX_NAME $VALID_RES $USER_OUTPUT
	else
		print_success $EX_NAME
	fi

	clean_test
}

test_c00()
{
	test_ex00
}
