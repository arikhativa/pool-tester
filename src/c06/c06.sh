#!/bin/bash

c06_ex_test()
{
	# Setup
	local EX_NAME=$1
	local EX_PATH=$2
	local EXPECT_NUM_FILES=$3
	local COMPILE=$4

	local CORRECT_RES=$BASEDIR/resources/res/$EX_PATH

	check_files "$USER_REPO_PATH/$EX_PATH" $EXPECT_NUM_FILES

	if [ $FILES_IN_DIR -eq -2 ]; then
		print_no_dir $EX_PATH

		return
	fi
	if [ $FILES_IN_DIR -eq 0 ]; then
		print_no_exec $EX_NAME

		return
	fi
	if [ $FILES_IN_DIR -ne $EXPECT_NUM_FILES ]; then
		print_file_error $EX_NAME $EXPECT_NUM_FILES $FILES_IN_DIR

		return
	fi

	check_norm $USER_REPO_PATH/$EX_PATH
	if [ $IS_NORM -eq $ERROR ]; then
		print_norm_error $EX_NAME 

		return
	fi

	compile_tests_c06 $USER_REPO_PATH/$EX_PATH/$EX_NAME.c 
	if [ $IS_COMPLIE -eq $ERROR ] ; then
		print_compile_error $EX_NAME

		return
	fi

	# Test
	if [ $IS_VALGRIND_INSTALLED -eq $SUCCESS ]; then
		run_with_valgrind $UNIQUE_EXEC
		if [ $IS_VALGRIND -eq $ERROR ] ; then
			print_valgrind_error $EX_NAME
		fi
	else
		./$UNIQUE_EXEC > $USER_RES
	fi

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

c06_project_test()
{
	local PROJECT_NAME=$1
	TESTS_NAMES=$2
	NUM_OF_FILES_PER_TEST=$3

	COMPILE=(a )
	EXEC_PATHS=($PROJECT_NAME/ex00 $PROJECT_NAME/ex01 $PROJECT_NAME/ex02 $PROJECT_NAME/ex03 $PROJECT_NAME/ex04 $PROJECT_NAME/ex05 $PROJECT_NAME/ex06 $PROJECT_NAME/ex07 $PROJECT_NAME/ex08 $PROJECT_NAME/ex09 $PROJECT_NAME/ex10 $PROJECT_NAME/ex11 $PROJECT_NAME/ex12)

	print_start_project $PROJECT_NAME

	i=0
	while [ $i -ne ${#TESTS_NAMES[@]} ]
	do
		c06_ex_test ${TESTS_NAMES[i]} ${EXEC_PATHS[i]} ${NUM_OF_FILES_PER_TEST[i]} ${COMPILE[i]}
		i=$((i+1))
	done
}

test_c06()
{
	local TESTS_NAMES=(ft_print_program_name)
	local NUM_OF_FILES_PER_TEST=(1 1 1 )

	c06_project_test "c06" $TESTS_NAMES $NUM_OF_FILES_PER_TEST
}


