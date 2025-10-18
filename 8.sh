# !/bin/bash

multiFileSearcher() {
    dir="$1"

    # find "$dir" -type f -name "*.log" -exec grep "needle" {} + 
    grep -l "needle" $dir/*.log
}

multiFileSearcher 8