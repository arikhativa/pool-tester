#!/bin/sh

test_ex00()
{
	printf "\nex00:\n\n"

	gcc $CURRENT_DIR/src/c00/ex00/main.c $REPO_PATH/c00/ex00/ft_putchar.c

	local VALID_RES="a"

	local USER_OUTPUT=$(./a.out)

	if [ "$VALID_RES" != "$USER_OUTPUT" ]; then
		printf "failed.. ex00/ft_putchar.c\n\n"
		printf "expected output:\n"
		printf "\t$VALID_RES\n"
		printf "user  output:\n"
		printf "\t$USER_OUTPUT\n"
	else
		printf "success! ex00/ft_putchar.c\t\t\n"
	fi

}

function test_c00()
{
	test_ex00
}
