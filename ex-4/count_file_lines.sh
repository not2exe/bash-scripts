#!/bin/bash

read -p "Введите имя файла: " filename

if [ ! -f "$filename" ]; then
    echo "Файл не найден!"
    exit 1
fi

lines=$(wc -l < "$filename")

echo "Количество строк в файле '$filename': $lines"
