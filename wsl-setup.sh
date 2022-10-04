#!/bin/bash

# Script links user's hhome folder directories to home folder directories in WSL
# WARNING: This script assumes that your user name in Windows and WSL is the same

for dir in 'Documents' 'Pictures' 'Downloads' 'Videos' 'Desktop' 'Music' '3D Objects'
do
	ln -s "/mnt/c/Users/$USER/$dir" "/home/$USER/$dir"
	echo /mnt/c/Users/$USER/$dir /home/$USER/$dir
done
