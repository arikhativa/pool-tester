#!/bin/sh

USER_REPO_PATH=$2
EXEC_FIEL="a.out"
IS_COMPLIE=1
IS_NORME=1
IS_COUNT_FILES=1
USER_RES=./user_res.txt
IS_DIFF_FILE=./is_diff

BASEDIR=$(dirname "$0")

if [ "$USER_REPO_PATH" == "" ] ; then
	USER_REPO_PATH="$BASEDIR/../"
fi

source $BASEDIR/src/c00/c00.sh
source $BASEDIR/src/c01/c01.sh
source $BASEDIR/src/c02/c02.sh

source $BASEDIR/src/util/generc_test.sh
source $BASEDIR/src/util/clean_test.sh
source $BASEDIR/src/util/print.sh
source $BASEDIR/src/util/compile.sh
source $BASEDIR/src/util/check_norm.sh
source $BASEDIR/src/util/check_files.sh


case $1 in
	-c00)
		test_c00 ;;
	-c01)
		test_c01 ;;
	-c02)
		test_c02 ;;
	*)
		test_c00
		test_c01
		test_c02
esac