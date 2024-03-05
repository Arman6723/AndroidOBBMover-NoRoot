#!/bin/sh

# Define the source and destination directories
SOURCE_DIR="/path/to/source/directory"
DEST_DIR="/path/to/destination/directory"

# Get a list of .obb files in the source directory
FILES=$(adb shell ls $SOURCE_DIR/*.obb)

# Loop through each file and move it to the destination directory
for FILE in $FILES
do
  echo "Moving $FILE to $DEST_DIR"
  adb shell mv $FILE $DEST_DIR
done

echo "All .obb files have been moved from $SOURCE_DIR to $DEST_DIR"


# Please replace "/path/to/source/directory" and "/path/to/destination/directory" with the actual paths on your Android device.

# To run this script, save it to a file named move_obb_files.sh, open a terminal or command prompt, navigate to the directory where you saved the script, and type ./move_obb_files.sh.