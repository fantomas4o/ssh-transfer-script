#!/bin/bash

read -p "Enter IP address: " ip
read -p "Enter SSH username: " username
read -p "Enter path to private SSH key: " private_key_path

echo "Select an option:"
echo "1. Upload a file"
echo "2. Download a file"
read -p "Enter option number: " option

case $option in
    1)
        read -p "Enter local path to the file to upload: " local_file_path
        read -p "Enter remote server path for the file you will upload: " remote_file_path
        scp -i "$private_key_path" "$local_file_path" "$username"@"$ip":"$remote_file_path"
        echo "File was successfully uploaded."
        ;;
    2)
        read -p "Enter remote server path for the file you will download: " remote_file_path
        read -p "Enter local path where you will download the file: " local_file_path
        scp -i "$private_key_path" "$username"@"$ip":"$remote_file_path" "$local_file_path"
        echo "File was successfully downloaded."
        ;;
    *)
        echo "Invalid option."
        ;;
esac
