#!/bin/bash

# Script links user's home folder directories to home folder directories in WSL

help_msg="--help\t\t\tdisplays this help message\n\
--user <username>\tyour user name when it's different in Windows and WSL"

username=$USER

while [[ $# -gt 0 ]]; do
    if [[ "$1" == "--user" ]]; then
        if [[ -n $2 ]]; then
            username="$2"
        fi
        shift 2
    elif [[ "$1" == "--help" ]]; then
        echo -e "$help_msg"
        exit 0
    else
        shift
    fi
done

for dir in 'Documents' 'Pictures' 'Downloads' 'Videos' 'Desktop' 'Music' '3D Objects'
do
	ln -s "/mnt/c/Users/$username/$dir" "/home/$USER/$dir"
	echo /mnt/c/Users/$username/$dir /home/$USER/$dir
done
