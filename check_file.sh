#!/bin/bash

read -p "Введите имя файла: " filename

if [ -f "$filename" ]; then
    echo "Файл найден!"
else
    echo "Файл не найден."
fi
