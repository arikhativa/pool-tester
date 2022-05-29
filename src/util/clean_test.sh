#!/bin/bash

clean_test()
{
	rm $EXEC_FIEL 2>/dev/null
	rm $IS_DIFF_FILE 2>/dev/null
	rm $USER_RES 2>/dev/null
	rm $VALGRIND_OUTPUT 2>/dev/null
	rm $UNIQUE_EXEC 2>/dev/null
}