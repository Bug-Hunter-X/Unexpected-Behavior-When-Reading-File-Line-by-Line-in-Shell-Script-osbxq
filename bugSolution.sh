#!/bin/bash

# This script correctly reads a file and displays its contents,
# handling empty lines and lines containing only whitespace.

filename="my_file.txt"

if [ -f "$filename" ]; then
  while IFS= read -r line; do
    # Check if the line is not empty after trimming whitespace
    line=$(echo "$line" | xargs)
    if [ -n "$line" ]; then 
      echo "$line"
    fi
  done < "$filename"
else
  echo "File not found."
fi