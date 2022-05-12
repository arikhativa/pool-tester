#!/bin/sh

CURRENT_DIR=$PWD
USER_REPO_PATH=".."
EXEC_FIEL="a.out"

source ./src/c00/c00.sh
source ./src/util/clean_test.sh
source ./src/util/print.sh
source ./src/util/compile.sh

test_c00
