#!/bin/bash

NAME="Sahil"
AGE=""

#To use || and && need to enclose if condition in [[]]
#-z checks for empty variable
#-s checks for the existance of file with non-zero size

if [[ -z $AGE || ! -z "$NAME" ]] ; then
	echo -e "\$AGE is empty.\n\$NAME is initialized as $NAME"
elif [ -s "$0" ] ; then
	echo "The script name is $0"
else
	exit 1
fi
