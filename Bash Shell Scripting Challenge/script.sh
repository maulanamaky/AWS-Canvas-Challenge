#!/bin/bash

NAME="AHMAD"
TOTAL=25

# list all with file NAME and REMOVE NAME for only get number and get latest number
CHECK_NUMBER=$(ls -v ${NAME}* | sed "s/${NAME}//" | tail -1)

# check if CHECK_NUMBER start from 0 and then + 1 or start 25 and then + 1
MIN_NUMBER=$(( ${CHECK_NUMBER:-0} + 1 ))

# subs for max iteration, if MIN_NUMBER start 1 and then + 25 - 1 equals max iteration is 25
MAX_NUMBER=$(( ${MIN_NUMBER} + ${TOTAL} - 1 ))

for ((i=${MIN_NUMBER}; i<=${MAX_NUMBER}; i++))
do
  touch $NAME$i
done
