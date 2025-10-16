#!/bin/bash

read -p "Введите путь к директории: " dir

if [ ! -d "$dir" ]; then
    echo "Директория не найдена!"
    exit 1
fi

current_date=$(date)

archive_name="$(basename "$dir")_$current_date.tar.gz"

tar -czf "$archive_name" -C "$(dirname "$dir")" "$(basename "$dir")"
