#!/bin/bash

GB_CSV="testdata/garbage.csv"
EM_CSV="testdata/employees.csv"

set IFS=,
set oldIFS = $IFS

readarray -t ARR < $GB_CSV

NUM_ARR_ELEMENTS=${#ARR[@]}

echo "There are $NUM_ARR_ELEMENTS rows in the file $GB_CSV"

#Remove extra spaces from file#
INC=0
for i in "${ARR[@]}"
do
   :
  res="${i//[^ ]}"					#extract only space characters ${i//[.*]} returns entier row
  TMP_CNT="${#res}"					#count space characters
  while [ ${TMP_CNT} -gt 0 ]; do
    i=${i/, /,}						#remove extra space
    TMP_CNT=$[$TMP_CNT-1]
  done
									#While loop could be avoided by using i=${i//, /,} 
									#which removes spaces from entire row
  ARR[$INC]=$i 						#Insert updated row back into array
  INC=$[$INC+1]
done

##Remove last character from each row##
INC=0
for i in "${ARR[@]}"
do
   :
  ARR[$INC]=${i::-1}				#Print starting position till n-1 th position
  INC=$[$INC+1]
done

##Capitalize all strings in each row##
INC=0
for i in "${ARR[@]}"
do
   :
  ARR[$INC]=${i^^}
  printf "%s" "${ARR[$INC]}"
  INC=$[$INC+1]
  echo
done


readarray -t ARR < $EM_CSV
NUM_ARR_ELEMENTS=${#ARR[@]}

echo "There are $NUM_ARR_ELEMENTS rows in file $EM_CSV"

##Add a # symbol in front of each line##
INC=0
for i in "${ARR[@]}"; do

ARR[$INC]="#${i}"
echo "${ARR[$INC]}"
((INC++))
done


echo -e "\nLet's make Bob, Robert!"
INC=0
i=0
for i in "${ARR[@]}"
do
   :
  ARR[$INC]=${i/Bob/Robert}
  printf "%s" "${ARR[$INC]}"
  INC=$[$INC+1]
  echo
done


echo;echo "Lets remove the column: birthday (1-31)"
INC=0
COLUM_TO_REM=4
for i in "${ARR[@]}"
do
   :

  TMP_CNT=0
  STR=""
  IFS=',' read -ra ELEM_ARR <<< "$i"
  for field in "${ELEM_ARR[@]}"; do

    if [ $TMP_CNT -ne 0 ] && [ $TMP_CNT -ne $COLUM_TO_REM ]; then
      STR="${STR},${field}"
    elif [ $TMP_CNT -eq 0 ]; then
      STR="${STR}${field}"
    fi
    TMP_CNT=$[$TMP_CNT+1]
  done

  ARR[$INC]=$STR
  echo "${ARR[$INC]}"
  INC=$[$INC+1]
done

