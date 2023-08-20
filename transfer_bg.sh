#!/bin/bash
read -p "Въведете IP адрес: " ip
read -p "Въведете потребителско име за SSH: " username
read -p "Въведете пътя до частния SSH ключ: " private_key_path
echo "Изберете опция:"
echo "1. Качване на файл"
echo "2. Сваляне на файл"
read -p "Въведете номер на опция: " option
case $option in
    1)
        read -p "Въведете локалния път до файла за качване: " local_file_path
        read -p "Въведете пътя на сървъра до файла, който ще качите: " remote_file_path
        scp -i "$private_key_path" "$local_file_path" "$username"@"$ip":"$remote_file_path"
        echo "Файлът беше успешно качен."
        ;;
    2)
        read -p "Въведете пътя на сървъра до файла, който ще свалите: " remote_file_path
        read -p "Въведете пътя, където ще свалите файла: " local_file_path
        scp -i "$private_key_path" "$username"@"$ip":"$remote_file_path" "$local_file_path"
        echo "Файлът беше успешно свален."
        ;;
    *)
        echo "Невалидна опция."
        ;;
esac
