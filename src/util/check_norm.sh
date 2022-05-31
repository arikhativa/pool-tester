#!/bin/bash

is_norminette_installed()
{
	local OUT_PUT=$(command -v norminette)

	IS_NORMINETTE=$SUCCESS
	if [ "$OUT_PUT" == "" ] ; then
		IS_NORMINETTE=$ERROR
		print_norminette_not_installed
	fi
}

check_norm()
{
	if [ $IS_NORMINETTE -eq $ERROR ] ; then
		IS_NORM=$SUCCESS
		return ;
	fi

	local PATH_TO_DIR=$1

	local OUT_PUT=$(norminette -R CheckForbiddenSourceHeader $PATH_TO_DIR/*)

	NORME_RES=$(echo $OUT_PUT | grep -e "Error" -e "Warning")

	if [ "$NORME_RES" == "" ] ; then
		IS_NORM=$SUCCESS
	else
		IS_NORM=$ERROR
	fi
}

check_norm_c08()
{
	if [ $IS_NORMINETTE -eq $ERROR ] ; then
		IS_NORM=$SUCCESS
		return ;
	fi

	local PATH_TO_DIR=$1

	local OUT_PUT=$(norminette -R CheckForbiddenSourceHeader -R CheckDefine  $PATH_TO_DIR/*)

	NORME_RES=$(echo $OUT_PUT | grep -e "Error" -e "Warning")

	if [ "$NORME_RES" == "" ] ; then
		IS_NORM=$SUCCESS
	else
		IS_NORM=$ERROR
	fi
}
