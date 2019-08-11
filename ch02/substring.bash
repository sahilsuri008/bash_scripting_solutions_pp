#!/bin/bash

#Script to demonstrate string extraction
#using Bash builtin SUBSTR
#Format: ${VRAIBLE:POSITION:LENGTH}

STR="My name is Sahil. I was born on Jan 1"

echo "First character: ${STR:0:1}"
echo "first three characters ${STR:0:3}"
echo "Eleventh to fifteenth characters: ${STR:10:6}"
echo "Nineteenth character onwards: ${STR: 18}"
echo "The last character is: ${STR: -1}"

##String comparison examples##
STR2="abc"
STR3="bcd"
STR4="Bcd"

if [[ $STR2 < $STR3 ]]; then
 echo "STR2 is less than STR3"
else
 echo "STR3 is greater than STR2"
fi

if [[ $STR3 < $STR4 ]]; then
 echo "STR3 is less than STR4"
else
 echo "STR4 is greater than STR3"
fi
