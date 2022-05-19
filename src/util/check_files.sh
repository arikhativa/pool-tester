#!/bin/bash

check_files()
{
	local PATH_TO_DIR=$1
	FILES=$2

	FILES=$((FILES+2))

	local COUNT=$(ls -a $PATH_TO_DIR 2>/dev/null | wc -l)

	if [ $COUNT -ne $FILES ] ; then
		IS_COUNT_FILES=$ERROR
	else
		IS_COUNT_FILES=$SUCCESS
	fi
}
