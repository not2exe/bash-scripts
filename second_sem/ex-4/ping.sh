if ping -c 4 $1; then
  echo "Сеть работает"
else
  echo "Нет соединения"
fi
