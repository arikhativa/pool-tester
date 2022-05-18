#!/bin/bash

test_c01()
{
	local TESTS_NAMES=(ft_ft ft_ultimate_ft ft_swap ft_div_mod ft_ultimate_div_mod ft_putstr ft_strlen ft_rev_int_tab ft_sort_int_tab)
	local NUM_OF_FILES_PER_TEST=(1 1 1 1 1 1 1 1 1)

	generic_project_test "c01" $TESTS_NAMES $NUM_OF_FILES_PER_TEST
}
