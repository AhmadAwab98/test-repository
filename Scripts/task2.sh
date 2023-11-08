#!/usr/bin/bash

# create task2 directory and navigate into it
echo "creating folder task2"
mkdir -p task2
cd task2

# create files
echo "creating files"
touch file{1..4}.txt

# create task_temp directory
echo "creating folder task2_temp"
mkdir -p task2_temp

# copy files into the created directory
echo "copying files"
cp file{1..3}.txt task2_temp

# move task2_temp to a different directory (i.e. Scripts)
mv task2_temp /home/ahmadawab/test-repository/Scripts

echo "swapping names"
cd ~/test-repository/Scripts 

# swap folder names using temporary folder
temp="temp_dir"
mv task2 "$temp"
mv task2_temp task2
mv "$temp" task2_temp
