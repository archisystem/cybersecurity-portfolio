#!/bin/bash

echo "Сбор информации о системе..."

apt update
apt install -y cowsay sl

echo "=== УСТАНОВЛЕННЫЕ ПАКЕТЫ ===" > info
dpkg -l >> info


echo "=== ЗАПУЩЕННЫЕ ПРОЦЕССЫ ===" >> info
ps aux >> info


echo "=== ОТКРЫТЫЕ ПОРТЫ ===" >> info
ss -tuln >> info


echo "=== ВЕРСИЯ ЯДРА ===" >> info
uname -r >> info

echo "=== ОПЕРАЦИОННАЯ СИСТЕМА ===" >> info
cat /etc/os-release >> info
