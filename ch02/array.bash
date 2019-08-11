#!/bin/bash

##Demonstrating some of the ways to build arrays in Bash##

#Example 1: Populate from strings
declare -a my_arr1=(unix linux macos)

for i in "${my_arr1[@]}"; do echo $i; done

#Example 2: Populate from file
readarray -t my_arr2 < array.bash

for i in "${my_arr2[@]}"; do echo $i; done

#Example 3: Populate from the output of a command
readarray -t my_arr3 < <(ls /tmp)
for i in "${my_arr3[@]}"; do echo $i ; done

#Example 4: Populate using HERE strings
STR="unix and linux system administrator"
read -ra my_arr4 <<< "$STR"
for i in "${my_arr4[@]}"; do echo $i ; done
