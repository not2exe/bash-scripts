echo -n "Введите число: "
read num

if [ "$num" -gt 0 ]; then
  echo "Число положительное"
elif [ "$num" -lt 0 ]; then
  echo "Число отрицательное"
else
  echo "Число равно нулю"
fi

i=1
while [ "$i" -le "$num" ]; do
  echo "$i"
  i=$((i + 1))
done
