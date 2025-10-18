# !/bin/bash

sort_files() {
    dir="$1"

    # ls -l "$dir" | sort -k 5 -n | awk '{print $5, $NF}'
    # find "$dir" -type f -name "*.txt" -exec ls -l {} + | sort -k 5,5 -n | awk '{ print $5, $NF }'
    find "$dir" -maxdepth 1 -type f -name "*.txt" -exec stat -c "%n %s" {} + | sort -k 2,2 -n
}

sort_files 7