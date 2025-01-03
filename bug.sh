#!/bin/bash

# This script attempts to read a file and display its contents.
# However, it contains a subtle error that can lead to unexpected behavior.

filename="my_file.txt"

if [ -f "$filename" ]; then
  # The error is in this line
  while IFS= read -r line; do
    echo "$line"
  done < "$filename"
else
  echo "File not found."
fi