#!/bin/bash

MY_NAME="Sahil"
NAME_1="Sam"
NAME_2="Jane"
NAME_3="Sue"
Name_4="Kate"

if [ "${MY_NAME}" == "Ron" ]; then
    echo "Ron is home from vacation"
elif [[ "${MY_NAME}" != ${NAME_1}" && "${MY_NAME}" != ${NAME_2}" && "${MY_NAME}" == "Sahil" ]]; then
    echo "Sahil is home after some unnecessary AND logic"
elif [ "${MY_NAME}" == ${NAME_3}" || "${MY_NAME}" == ${NAME_4}" ]; then
    echo "Looks like one of the ladies are home"
else
    echo "Who is this stranger?"
fi

