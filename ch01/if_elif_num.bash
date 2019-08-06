#!/bin/bash

MY_AGE=45

if [[ $MY_AGE -lt 30 ]] ; then
	echo "you are younger than 30 years of age."
elif [[ $MY_AGE -ge 30 ]] ; then
	echo "You are older than 30 years of age."
else 
	echo "I'm not sure how old you are."
	exit 1
fi

echo "This statement might not get executed"
