#!/bin/sh


test_ex00()
{
	EX_NAME="ft_putchar"

	print_start_test $EX_NAME

	gcc $CURRENT_DIR/src/c00/ex00/main.c $REPO_PATH/c00/ex00/ft_putchar.c

	local VALID_RES="!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_\`abcdefghijklmnopqrstuvwxyz{|}~"

	local USER_OUTPUT=$(./a.out)

	if [ "$VALID_RES" != "$USER_OUTPUT" ]; then
		print_fail $EX_NAME $VALID_RES $USER_OUTPUT
	else
		print_success $EX_NAME
	fi
}

test_c00()
{
	test_ex00
}
