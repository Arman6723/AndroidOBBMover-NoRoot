#!/bin/bash

# Define your source and destination paths for file OR folder
# Each source[i] corresponds to destination[i]
source[0]="/path/to/source/directory1"
destination[0]="/path/to/destination/directory1"

# Uncomment the following lines to move another file/folder

# source[1]="/path/to/source/file2"
# destination[1]="/path/to/destination/directory2"

# source[2]="/path/to/source/directory"
# destination[2]="/path/to/destination/directory"

# Get the length of the arrays
length=${#source[@]}

# Use a loop to move each file from its source to its destination
for ((i=0; i<$length; i++)); do
  adb push ${source[$i]} ${destination[$i]}
done
