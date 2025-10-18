#!/bin/bash

script() {
    echo "Welcome to the menu, choose an option below"
    echo "1) check disk space"
    echo "2) show system uptime"
    echo "3) list users"
    echo "4) list directory contents"

    read user_choice

    if ! [[ $user_choice =~ [1-4] ]]; then
        echo "Invalid option"
        exit 1
    fi

    if [ $user_choice -eq 1 ]; then
        df -h
    fi

    if [ $user_choice -eq 2 ]; then
        uptime
    fi

    if [ $user_choice -eq 3 ]; then
        cut -d: -f1 /etc/passwd
    fi

    if [ $user_choice -eq 4 ]; then
        ls
    fi
}

script
