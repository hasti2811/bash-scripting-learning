#!/bin/bash

script() {
    mkdir -p Arena_Boss
    touch Arena_Boss/file{1..5}.txt

    for file in Arena_Boss/file{1..5}.txt; do
        random_number=$(( RANDOM % 11 + 10 ))
        
        for i in $(seq 1 $random_number); do
            echo This is line $i >> $file
        done
    done

    find Arena_Boss -type f -name "*.txt" -exec stat -c "%s %n" {} + | sort -n

    for j in Arena_Boss/file{1..5}.txt; do
        if grep -q "Victory" "$j"; then
            mkdir -p Victory_Archive
            mv "$j" Victory_Archive
        fi
    done
}

script