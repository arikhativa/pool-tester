#!/bin/bash

test_c04()
{
	local TESTS_NAMES=(ft_strlen ft_putstr ft_putnbr ft_atoi ft_putnbr_base)
	local NUM_OF_FILES_PER_TEST=(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)

	generic_project_test "c04" $TESTS_NAMES $NUM_OF_FILES_PER_TEST
}
