#!/bin/bash

MY_VAR=20

case $MY_VAR in
	1)	echo 1
		;;
	2)	echo 2
		;;
	*)	echo "\$MY_VAR is $MY_VAR"
		;;
esac
