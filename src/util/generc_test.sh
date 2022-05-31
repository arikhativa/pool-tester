#!/bin/bash

generc_ex_test()
{
	# Setup
	local EX_NAME=$1
	local EX_PATH=$2
	local EXPECT_NUM_FILES=$3
	local COMPILE_FUNC=$4
	local NORM_FUNC=$5

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

	if [ -z "$NORM_FUNC" ] ; then
		# the generic compile func
		NORM_FUNC=check_norm
	fi
	$NORM_FUNC $USER_REPO_PATH/$EX_PATH
	if [ $IS_NORM -eq $ERROR ]; then
		print_norm_error $EX_NAME 

		return
	fi

	if [ -z "$COMPILE_FUNC" ] ; then
	# the generic compile func
	COMPILE_FUNC=compile_tests
	fi

	$COMPILE_FUNC $BASEDIR/src/$EX_PATH $USER_REPO_PATH/$EX_PATH
	if [ $IS_COMPLIE -eq $ERROR ] ; then
		print_compile_error $EX_NAME

		return
	fi

	# Test
	if [ $IS_VALGRIND_INSTALLED -eq $SUCCESS ]; then
		run_with_valgrind $EXEC_FIEL
		if [ $IS_VALGRIND -eq $ERROR ] ; then
			print_valgrind_error $EX_NAME
		fi
	else
		./$EXEC_FIEL > $USER_RES
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

generic_project_test()
{
	local PROJECT_NAME=$1
	TESTS_NAMES=$2
	NUM_OF_FILES_PER_TEST=$3
	local COMPILE_FUNC=$4
	local NORM_FUNC=$5

	EXEC_PATHS=($PROJECT_NAME/ex00 $PROJECT_NAME/ex01 $PROJECT_NAME/ex02 $PROJECT_NAME/ex03 $PROJECT_NAME/ex04 $PROJECT_NAME/ex05 $PROJECT_NAME/ex06 $PROJECT_NAME/ex07 $PROJECT_NAME/ex08 $PROJECT_NAME/ex09 $PROJECT_NAME/ex10 $PROJECT_NAME/ex11 $PROJECT_NAME/ex12)

	print_start_project $PROJECT_NAME

	i=0
	while [ $i -ne ${#TESTS_NAMES[@]} ]
	do
		generc_ex_test ${TESTS_NAMES[i]} ${EXEC_PATHS[i]} ${NUM_OF_FILES_PER_TEST[i]} $COMPILE_FUNC $NORM_FUNC
		i=$((i+1))
	done
}
