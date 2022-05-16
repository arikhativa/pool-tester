#!/bin/sh

test_ex00()
{
	local EX_NAME="ft_putchar"
	local EX_PATH="c00/ex00"
	local NUM_OF_FILE=1

	generc_test $EX_NAME $EX_PATH $NUM_OF_FILE
}

test_ex01()
{
	# Setup
	local EX_NAME="ft_print_alphabet"
	local EX_PATH="c00/ex01"
	local NUM_OF_FILE=1

	generc_test $EX_NAME $EX_PATH $NUM_OF_FILE
}

test_ex02()
{
	# Setup
	local EX_NAME="ft_print_reverse_alphabet"
	local EX_PATH="c00/ex02"
	local NUM_OF_FILE=1

	generc_test $EX_NAME $EX_PATH $NUM_OF_FILE
}

test_ex03()
{
	# Setup
	local EX_NAME="ft_print_numbers"
	local EX_PATH="c00/ex03"
	local NUM_OF_FILE=1

	generc_test $EX_NAME $EX_PATH $NUM_OF_FILE
}

test_ex04()
{
	# Setup
	local EX_NAME="ft_is_negative"
	local EX_PATH="c00/ex04"
	local NUM_OF_FILE=1

	generc_test $EX_NAME $EX_PATH $NUM_OF_FILE
}

test_ex05()
{
	# Setup
	local EX_NAME="ft_print_comb"
	local EX_PATH="c00/ex05"
	local NUM_OF_FILE=1

	generc_test $EX_NAME $EX_PATH $NUM_OF_FILE
}

test_ex06()
{
	# Setup
	local EX_NAME="ft_print_comb2"
	local EX_PATH="c00/ex06"
	local NUM_OF_FILE=1

	generc_test $EX_NAME $EX_PATH $NUM_OF_FILE
}

test_ex07()
{
	# Setup
	local EX_NAME="ft_putnbr"
	local EX_PATH="c00/ex07"
	local NUM_OF_FILE=1

	generc_test $EX_NAME $EX_PATH $NUM_OF_FILE
}

test_ex08()
{
	# Setup
	local EX_NAME="ft_print_combn"
	local EX_PATH="c00/ex08"
	local NUM_OF_FILE=1

	generc_test $EX_NAME $EX_PATH $NUM_OF_FILE
}

test_c00()
{
	TESTS_NAMES=(ft_putchar ft_print_alphabet)
	NUM_OF_FILES_PER_TEST=(1 1)

	for i in "${TESTS_NAMES[@]}"
	do
    	echo $i
	done

	local PROJECT_NAME="c00"

	print_start_project $PROJECT_NAME

	# test_ex00
	# test_ex01
	# test_ex02
	# test_ex03
	# test_ex04
	# test_ex05
	# test_ex06
	# test_ex07
	# test_ex08
}
