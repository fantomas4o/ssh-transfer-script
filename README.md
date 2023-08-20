SSH File Transfer Script

This is a simple Bash script that allows you to upload or download files using SSH.

Usage

Make sure you have Bash installed on your system.

Open a terminal.

Run the script using the following command:

./script.sh

Script Details

The script prompts you for the following information:

IP Address: Enter the IP address of the remote server.

SSH Username: Enter the username to use for SSH authentication.

Private SSH Key Path: Enter the path to your private SSH key file.

The script then presents two options:

Upload a File: Enter the local path of the file you want to upload and the remote path on the server where you want to upload it.

Download a File: Enter the remote path of the file you want to download and the local path where you want to save it.

The script uses the scp command to securely copy files between your local machine and the remote server using the provided SSH credentials and paths.

Options

Option 1: Upload a file to the remote server. Option 2: Download a file from the remote server. Other options: If you input an invalid option, the script will display an error message.
