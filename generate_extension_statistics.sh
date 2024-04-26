#!/bin/bash

# Get list of file extensions in the repository
extensions=$(find . -type f | grep -Eo '\.[^.]+$' | sort | uniq -c | awk '{print $2}')

# Count total number of files
total_files=$(find . -type f | wc -l)

# Calculate percentage for each extension
echo "File Extension Statistics:"
for ext in $extensions; do
    count=$(find . -type f -name "*$ext" | wc -l)
    percentage=$(echo "scale=2; ($count / $total_files) * 100" | bc)
    echo "$ext: $percentage%"
done
