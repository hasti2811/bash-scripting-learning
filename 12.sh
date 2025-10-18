#!/bin/bash

script() {
    config_file="$1"

    if [ -z $config_file ]; then
        echo "File not provided"
        exit 1
    fi

    if ! [ -f $config_file ]; then
        echo "File does not exist"
        exit 1
    fi

    while IFS="=" read -r key value; do
        echo "Key: $key Value: $value"
    done < $config_file
}

script 12.txt
