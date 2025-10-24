for cmd in "$@"; do
  bash -c "$cmd" &
done

wait
echo "Все команды завершены."
