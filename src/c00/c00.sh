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
	local PROJECT_NAME="c00"

	print_start_project $PROJECT_NAME

	test_ex00
	test_ex01
	test_ex02
	test_ex03
	test_ex04
	test_ex05
	test_ex06
	test_ex07
	test_ex08
}

generc_test()
{
	# Setup
	local EX_NAME=$1
	local EX_PATH=$2
	local VALID_RES=$3
	local NUM_OF_FILES=$4

	local CORRECT_RES=$CURRENT_DIR/resources/res/$EX_PATH

	check_files "$USER_REPO_PATH/$EX_PATH" 1
	if [ $IS_COUNT_FILES -eq 1 ]; then
		print_file_error $EX_NAME

		return
	fi

	check_norm $USER_REPO_PATH/$EX_PATH
	if [ $IS_NORME -eq 1 ]; then
		print_norm_error $EX_NAME 

		return
	fi
	

	compile_tests $CURRENT_DIR/src/$EX_PATH/main.c $USER_REPO_PATH/$EX_PATH/$EX_NAME.c
	if [ $IS_COMPLIE -eq 1 ]; then
		print_compile_error $EX_NAME

		return
	fi

	# Test
	./a.out > $USER_RES

	diff $USER_RES $CORRECT_RES > $IS_DIFF_FILE

	IS_DIFF=$(cat ./is_diff)

	if [[ "$IS_DIFF" != "" ]]; then
		print_fail $EX_NAME $CORRECT_RES $USER_RES
	else
		print_success $EX_NAME
	fi

	# Clean
	clean_test
}
