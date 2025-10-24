for file in "$1"/*; do
  new_name=$(echo "$file" | tr 'A-Z' 'a-z')
  mv -- "$file" "$new_name"
done
