#!/usr/bin/env zsh
set -m

echo "Запускаем три sleep в фоне"
sleep 5  &
sleep 10 &
sleep 15 &

echo "Фоновые задачи:"
jobs

echo
echo "Переводим задачу 1 на передний план"
fg %1

echo
echo "Задача 1 завершилась. Смотрим оставшиеся задачи:"
jobs

echo "Приостановим 3 задачу"
kill -TSTP %3
jobs

echo
echo "Возобновим задачу 3 в фоне"
bg %3
jobs
