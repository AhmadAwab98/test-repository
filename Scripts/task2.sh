#!/usr/bin/bash

echo "creating folder task2"

# creating task2 folder and changing the directory
mkdir -p task2
cd task2

echo "creating files"

# creating 4 files in task2 folder
touch file1.txt
touch file2.txt
touch file3.txt
touch file4.txt

echo "creating folder task2_temp"

# making 2nd folder task2_temp in task2 folder
mkdir -p task2_temp

echo "copying files"

# copying 3 files in task2 into task2_temp
cp file1.txt task2_temp
cp file2.txt task2_temp
cp file3.txt task2_temp

# moving task2_temp to parent folder of task2 i.e Scripts
cd ~
cd test-repository/scripts
cd task2
mv task2_temp /home/ahmadawab/test-repository/scripts

echo "swapping names"

# making a temporary folder for swapping the names of folders
temp="temp_dir"
cd ~
cd test-repository/scripts 

# swapping the names using temporary folder
mv task2 "$temp"
mv task2_temp task2
mv "$temp" task2_temp
