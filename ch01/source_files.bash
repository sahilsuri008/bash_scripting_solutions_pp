#!/bin/bash

#The functions used were defined in script library.bash#

source library.bash

FILENAME="test.txt"

create_file "$FILENAME"

delete_file "$FILENAME"

exit 0
