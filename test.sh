#!/bin/bash


USER_REPO_PATH=$2
EXEC_FIEL="a.out"
USER_RES=./user_res.txt
IS_DIFF_FILE=./is_diff
VALGRIND_OUTPUT=./valgrind_output.txt

SUCCESS=1
ERROR=0
IS_COMPLIE=$ERROR
IS_NORM=$ERROR
IS_NORMINETTE=$ERROR
IS_VALGRIND=$ERROR
IS_VALGRIND_INSTALLED=$ERROR
IS_COUNT_FILES=$ERROR


BASEDIR=$(dirname "$0")

if [ "$USER_REPO_PATH" == "" ] ; then
	USER_REPO_PATH="$BASEDIR/../"
fi

source $BASEDIR/src/c00/c00.sh
source $BASEDIR/src/c01/c01.sh
source $BASEDIR/src/c02/c02.sh

source $BASEDIR/src/util/check_valgrind.sh
source $BASEDIR/src/util/generc_test.sh
source $BASEDIR/src/util/clean_test.sh
source $BASEDIR/src/util/print.sh
source $BASEDIR/src/util/compile.sh
source $BASEDIR/src/util/check_norm.sh
source $BASEDIR/src/util/check_files.sh

is_norminette_installed
is_valgrind_installed

case $1 in
	c00)
		test_c00 ;;
	c01)
		test_c01 ;;
	c02)
		test_c02 ;;
	*)
		print_usage ;;
esac