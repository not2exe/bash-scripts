ls -l
file_name=$1
[ -e "$file_name" ] && echo "Файл $file_name существует" || echo "Файл $file_name не найден"

for file in *; do
    echo "$file — $(stat -c %A "$file" 2>/dev/null || stat -f %Sp "$file")"
done
