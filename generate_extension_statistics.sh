#!/bin/bash

# Count the number of .str and .jmp files in the repository
count_str=$(find . -type f -name "*.str" | wc -l)
count_jmp=$(find . -type f -name "*.jmp" | wc -l)

# Get the total number of files in the repository
total_files=$(find . -type f | wc -l)

# Calculate the percentages
if [[ $total_files -eq 0 ]]; then
    echo "No files found in the repository."
else
    percentage_str=$(echo "scale=2; ($count_str / $total_files) * 100" | bc)
    percentage_jmp=$(echo "scale=2; ($count_jmp / $total_files) * 100" | bc)

    echo ".str files: $percentage_str%"
    echo ".jmp files: $percentage_jmp%"
fi

