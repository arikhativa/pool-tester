#!/bin/bash

test_c02()
{
	local TESTS_NAMES=(ft_strcpy ft_strncpy ft_str_is_alpha ft_str_is_numeric ft_str_is_lowercase ft_str_is_uppercase ft_str_is_printable ft_strupcase ft_strlowcase)
	local NUM_OF_FILES_PER_TEST=(1 1 1 1 1 1 1 1 1)

	generic_project_test "c02" $TESTS_NAMES $NUM_OF_FILES_PER_TEST
}
