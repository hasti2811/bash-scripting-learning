#!/bin/bash

level_six() {

file_name="$1"

if [ -z "$file_name" ]; then
    echo "no file provided"
fi

if ! [ -f "$file_name" ]; then
    echo "file not found"
fi

line_count=$(cat "$file_name" | wc -l)

echo "the file "$file_name" has $line_count lines"
}

level_six "6.txt"