#!/bin/bash

test_c04()
{
	local TESTS_NAMES=(ft_strlen )
	local NUM_OF_FILES_PER_TEST=(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)

	generic_project_test "c04" $TESTS_NAMES $NUM_OF_FILES_PER_TEST
}
