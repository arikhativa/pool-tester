#!/bin/sh

CURRENT_DIR=$PWD
USER_REPO_PATH=".."
EXEC_FIEL="a.out"
IS_COMPLIE=1
IS_NORME=1
IS_COUNT_FILES=1
USER_RES=./user_res.txt
IS_DIFF_FILE=./is_diff

source ./src/c00/c00.sh
source ./src/util/clean_test.sh
source ./src/util/print.sh
source ./src/util/compile.sh
source ./src/util/check_norm.sh
source ./src/util/check_files.sh

test_c00
