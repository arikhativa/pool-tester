#!/bin/bash

test_c05()
{
	local TESTS_NAMES=(ft_iterative_factorial ft_recursive_factorial ft_iterative_power ft_recursive_power ft_fibonacci ft_sqrt ft_is_prime)
	local NUM_OF_FILES_PER_TEST=(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)

	generic_project_test "c05" $TESTS_NAMES $NUM_OF_FILES_PER_TEST
}
