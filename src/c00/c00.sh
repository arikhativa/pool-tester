#!/bin/sh

test_c00()
{
	local PROJECT_NAME="c00"

	TESTS_NAMES=(ft_putchar ft_print_alphabet ft_print_reverse_alphabet ft_print_numbers ft_is_negative ft_print_comb ft_print_comb2 ft_putnbr ft_print_combn )
	EXEC_PATHS=(c00/ex00 c00/ex01 c00/ex02 c00/ex03 c00/ex04 c00/ex05 c00/ex06 c00/ex07 c00/ex08)
	NUM_OF_FILES_PER_TEST=(1 1 1 1 1 1 1 1 1)

	print_start_project $PROJECT_NAME

	i=0
	while [ $i -ne 9 ]
	do
		generc_test ${TESTS_NAMES[i]} ${EXEC_PATHS[i]} ${NUM_OF_FILES_PER_TEST[i]}
		i=$((i+1))
	done
}
