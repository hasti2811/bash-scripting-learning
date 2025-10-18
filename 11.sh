#!/bin/bash

script() {
    dir="$1"
    threshold=100000000000

    usage=$(du -s "$dir" | awk '{print $1}')

    if [ "$usage" -gt "$threshold" ];  then
        echo "usage has exceeded threshold"
    else
        echo "Disk usage for $dir is at $usage%"
    fi
}

script ~