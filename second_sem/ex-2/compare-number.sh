#!/bin/bash

first=$1
second=$2

if [ "$first" -gt "$second" ]; then
  echo "Первое число больше"
elif [ "$first" -lt "$second" ]; then
  echo "Второе число больше"
else
  echo "Числа равны"
fi
