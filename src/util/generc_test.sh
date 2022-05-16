#!/bin/sh


generc_test()
{
	# Setup
	local EX_NAME=$1
	local EX_PATH=$2
	local NUM_OF_FILES=$3

	local CORRECT_RES=$CURRENT_DIR/resources/res/$EX_PATH

	check_files "$USER_REPO_PATH/$EX_PATH" $NUM_OF_FILES
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
