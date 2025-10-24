
prev_time=0

while true; do
  cur_time=$(stat -f %m "$1")

  if [ "$cur_time" != "$prev_time" ]; then
    if [ "$prev_time" != 0 ]; then
      echo "Файл был изменён. Время изменения $cur_time!"
    fi
    prev_time=$cur_time
  fi

  sleep 1
done
