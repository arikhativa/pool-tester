#!/bin/sh

test_ex00()
{
	local EX_NAME="ft_putchar"
	local EX_PATH="c00/ex00"

	generc_test $EX_NAME $EX_PATH $VALID_RES 
}

test_ex01()
{
	# Setup
	local EX_NAME="ft_print_alphabet"
	local EX_PATH="c00/ex01"

	generc_test $EX_NAME $EX_PATH $VALID_RES 
}

test_ex02()
{
	# Setup
	local EX_NAME="ft_print_reverse_alphabet"
	local EX_PATH="c00/ex02"

	generc_test $EX_NAME $EX_PATH $VALID_RES 
}

test_ex03()
{
	# Setup
	local EX_NAME="ft_print_numbers"
	local EX_PATH="c00/ex03"

	generc_test $EX_NAME $EX_PATH $VALID_RES 
}

test_ex04()
{
	# Setup
	local EX_NAME="ft_is_negative"
	local EX_PATH="c00/ex04"

	generc_test $EX_NAME $EX_PATH $VALID_RES 
}

test_ex05()
{
	# Setup
	local EX_NAME="ft_print_comb"
	local EX_PATH="c00/ex05"

	generc_test $EX_NAME $EX_PATH 
}

test_ex06()
{
	# Setup
	local EX_NAME="ft_print_comb2"
	local EX_PATH="c00/ex06"

	generc_test $EX_NAME $EX_PATH 
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
}

generc_test()
{
	# Setup
	local EX_NAME=$1
	local EX_PATH=$2
	local VALID_RES=$3
	local CORRECT_RES=$CURRENT_DIR/resources/res/$EX_PATH

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
