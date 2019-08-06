#!/bin/bash

#A shorthand method for equating bash if else#

#Example 1: Single command

NAME="SAHIL"

[[ "$NAME" == "sahil" ]] && echo 'correct name' || echo 'incorrect name'

#Example 2: More than one command using subshell"


[[ "$NAME" == "sahil" ]] && (echo 'correct name'; echo 'good job') > corr.txt || (echo 'incorrect name'; echo "Correct name: $NAME") > incorr.txt
