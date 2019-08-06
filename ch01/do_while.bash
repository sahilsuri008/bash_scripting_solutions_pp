#!/bin/bash

#While loop is suitable for iterating over dynamic conditions
#or iterating until a condition is satisfied#

COUNT=1

while [[ $COUNT -le 10 ]] ; do 
	echo $COUNT
	((COUNT=COUNT+1))	#same as ((COUNT++))
done
