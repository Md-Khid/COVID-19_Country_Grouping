#!/bin/bash

# Count the number of .str and .jrp files in the repository
count_str=$(find . -type f -name "*.str" | wc -l)
count_jrp=$(find . -type f -name "*.jrp" | wc -l)

# Get the total number of files in the repository
total_files=$(find . -type f | wc -l)

# Calculate the percentages
if [[ $total_files -eq 0 ]]; then
    echo "No files found in the repository."
else
    percentage_str=$(echo "scale=2; ($count_str / $total_files) * 100" | bc)
    percentage_jrp=$(echo "scale=2; ($count_jrp / $total_files) * 100" | bc)

    # Display percentages with software names
    echo "File Extension Statistics:"
    echo "IBM SPSS Modeller (.str): $percentage_str%"
    echo "JMP (.jrp): $percentage_jrp%"
fi



