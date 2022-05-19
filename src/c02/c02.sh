#!/bin/bash

test_c02()
{
	local TESTS_NAMES=(ft_strcpy ft_strncpy ft_str_is_alpha)
	local NUM_OF_FILES_PER_TEST=(1 1 1 1 1 1 1 1 1)

	generic_project_test "c02" $TESTS_NAMES $NUM_OF_FILES_PER_TEST
}
