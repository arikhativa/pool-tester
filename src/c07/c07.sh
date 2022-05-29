#!/bin/bash

test_c07()
{
	local TESTS_NAMES=(ft_strdup ft_range)
	local NUM_OF_FILES_PER_TEST=(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)

	generic_project_test "c07" $TESTS_NAMES $NUM_OF_FILES_PER_TEST
}
