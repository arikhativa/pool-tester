#!/bin/sh

check_norm()
{
	local PATH_TO_DIR=$1

	local OUT_PUT=$(norminette -R CheckForbiddenSourceHeader $PATH_TO_DIR/*)

	NORME_RES=$(echo $OUT_PUT | grep -e "Error" -e "Warning")

	if [ "$NORME_RES" == "" ] ; then
		IS_NORME=0
	else
		IS_NORME=1
	fi
}
