#!/bin/bash

read -p "Введите путь к директории: " dir

backup_dir="$dir/backup"
mkdir -p "$backup_dir"

for file in "$dir"/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        cp "$file" "$backup_dir/backup_$filename"
    fi
done

echo "Все файлы скопированы в '$backup_dir'"
