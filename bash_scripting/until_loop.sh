#!/bin/bash

# create a script that does the following:
#  - reads a filename from user input
#  - combines specifyed file with itself until it reaches a size greater than 1024 KB
# create a file using "head -c 4KB /dev/urandom > file.txt" command
# execute your script passing the file you've just created

read -r filename
filesize=$(( $(ls -l "$filename" | awk '{print $5 }') / 1024 ))
until [[ $filesize -ge "1024" ]]; do
    temp_var=$(cat "$filename")
    echo "$temp_var" >> "$filename"
    filesize=$(( $(ls -l "$filename" | awk '{print $5 }') / 1024 ))
    echo "Filesize: $filesize"
done