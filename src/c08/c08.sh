#!/bin/bash

test_c08()
{
	local TESTS_NAMES=(ft ft_boolean ft_abs ft_point ft_strs_to_tab)
	local NUM_OF_FILES_PER_TEST=(1 1 1 1 1)

	generic_project_test "c08" $TESTS_NAMES $NUM_OF_FILES_PER_TEST compile_tests_c08 check_norm_c08
}
