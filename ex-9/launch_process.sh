#!/bin/bash

read -p "Введите команду для запуска: " cmd

$cmd &

echo "Команда '$cmd' запущена в фоне с PID: $!"
