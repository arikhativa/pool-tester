#!/bin/bash

test_c03()
{
	local TESTS_NAMES=(ft_strcmp ft_strncmp ft_strcat)
	local NUM_OF_FILES_PER_TEST=(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)

	generic_project_test "c03" $TESTS_NAMES $NUM_OF_FILES_PER_TEST
}
