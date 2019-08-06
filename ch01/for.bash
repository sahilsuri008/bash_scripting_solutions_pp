#!/bin/bash

#For loop is suitable over iterating over files.

FILE_LIST=('file1' 'file2' 'file3')

for FILE in ${FILE_LIST[@]} ; do
	echo $FILE
done
