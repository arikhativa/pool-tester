#!/bin/bash

generc_ex_test()
{
	# Setup
	local EX_NAME=$1
	local EX_PATH=$2
	local NUM_OF_FILES=$3

	local CORRECT_RES=$BASEDIR/resources/res/$EX_PATH

	check_files "$USER_REPO_PATH/$EX_PATH" $NUM_OF_FILES
	if [ $IS_COUNT_FILES -eq 1 ]; then
		print_file_error $EX_NAME

		return
	fi

	check_norm $USER_REPO_PATH/$EX_PATH
	if [ $IS_NORM -eq 1 ]; then
		print_norm_error $EX_NAME 

		return
	fi
	

	compile_tests $BASEDIR/src/$EX_PATH/main.c $USER_REPO_PATH/$EX_PATH/$EX_NAME.c
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

generic_project_test()
{
	local PROJECT_NAME=$1
	TESTS_NAMES=$2
	NUM_OF_FILES_PER_TEST=$3

	EXEC_PATHS=($PROJECT_NAME/ex00 $PROJECT_NAME/ex01 $PROJECT_NAME/ex02 $PROJECT_NAME/ex03 $PROJECT_NAME/ex04 $PROJECT_NAME/ex05 $PROJECT_NAME/ex06 $PROJECT_NAME/ex07 $PROJECT_NAME/ex08 $PROJECT_NAME/ex09 $PROJECT_NAME/ex10 $PROJECT_NAME/ex11)

	print_start_project $PROJECT_NAME

	i=0
	while [ $i -ne ${#TESTS_NAMES[@]} ]
	do
		generc_ex_test ${TESTS_NAMES[i]} ${EXEC_PATHS[i]} ${NUM_OF_FILES_PER_TEST[i]}
		i=$((i+1))
	done
}
