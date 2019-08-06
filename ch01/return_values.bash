#!/bin/bash

GLOBAL_RET=255

function my_function_global() {
    ls /home/${1}/.bashrc
    GLOBAL_RET=$?
}

#Function with return value#

function my_function_return() {
    ls /home/${1}/.bashrc
    return $?
}

#Function with fork
function my_function_str() {
    local UNAME=$1
    local OUTPUT=""
    if [ -e /home/${UNAME}/.bashrc ]; then
        OUTPUT='FOUND IT'
    else
        OUTPUT='NOT FOUND'
    fi
    echo ${OUTPUT}
}

echo "Current ret: ${GLOBAL_RET}"
my_function_global "${USER}"
echo "Current ret after: ${GLOBAL_RET}"
GLOBAL_RET=255
echo "Current ret: ${GLOBAL_RET}"
my_function_return "${USER}"
GLOBAL_RET=$?
echo "Current ret after: ${GLOBAL_RET}"

GLOBAL_RET=""
echo "Current ret: ${GLOBAL_RET}"
GLOBAL_RET=$(my_function_str ${USER})

echo "Current ret after: $GLOBAL_RET"
exit 0

