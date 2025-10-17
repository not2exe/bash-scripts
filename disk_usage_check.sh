#!/bin/bash

usage=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$usage" -gt 80 ]; then
    echo "Внимание: использование диска превышает 80%"
else
    echo "Использование диска в норме"
fi
