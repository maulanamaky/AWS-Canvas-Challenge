#!/bin/bash

NAME="AHMAD"
TOTAL=25

CHECK_NUMBER=$(ls -v ${NAME}* | sed "s/${NAME}//" | tail -1)

MIN_NUMBER=$(( ${CHECK_NUMBER:-0} + 1 ))

MAX_NUMBER=$(( ${MIN_NUMBER} + ${TOTAL} - 1 ))

for ((i=${MIN_NUMBER}; i<=${MAX_NUMBER}; i++))
do
  touch $NAME$i
done
