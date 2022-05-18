#!/bin/bash

is_norminette_installed()
{
	local OUT_PUT=$(command -v normin2ette)

	if [ "$OUT_PUT" == "" ] ; then
		IS_NORMINETTE=0
		print_norminette_not_installed
	fi
}

check_norm()
{
	if [ $IS_NORMINETTE -eq 0 ] ; then
		IS_NORM=0
		return ;
	fi

	local PATH_TO_DIR=$1

	local OUT_PUT=$(norminette -R CheckForbiddenSourceHeader $PATH_TO_DIR/*)

	NORME_RES=$(echo $OUT_PUT | grep -e "Error" -e "Warning")

	if [ "$NORME_RES" == "" ] ; then
		IS_NORM=0
	else
		IS_NORM=1
	fi
}
