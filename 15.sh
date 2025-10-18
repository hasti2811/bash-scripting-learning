#!/bin/bash

script() {
    echo "Welcome to the menu, choose an option below"
    echo "1) Check disk space"
    echo "2) Show system uptime"
    echo "3) Backup the Arena directory and keep the last 3 updates"
    echo "4) Parse a configuration file settings.conf and display the values"

    read ans

    if ! [[ $ans =~ [1-4] ]]; then
        echo "Invalid input"
        exit 1
    fi

    if [ $ans -eq 1 ]; then
        df -h
    fi

    if [ $ans -eq 2 ]; then
        uptime
    fi

    if [ $ans -eq 3 ]; then
        echo "This part is being built soon"
    fi

    if [ $ans -eq 4 ]; then
        echo "This part is being built soon"
    fi
}

script