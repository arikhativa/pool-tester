#!/bin/bash

check_files()
{
	local PATH_TO_DIR=$1

	FILES_IN_DIR=$(ls -a $PATH_TO_DIR 2>/dev/null | wc -l)
	FILES_IN_DIR=$((FILES_IN_DIR-2))
}
