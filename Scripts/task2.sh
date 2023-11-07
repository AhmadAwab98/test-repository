#!/usr/bin/bash

echo "creating folder task2"
mkdir -p task2
cd task2

echo "creating files"
touch file1.txt
touch file2.txt
touch file3.txt
touch file4.txt

echo "creating folder task2_temp"
mkdir -p task2_temp

echo "copying files"
cp file1.txt task2_temp
cp file2.txt task2_temp
cp file3.txt task2_temp

# moving task2_temp to parent folder of task2
cd ~
cd test-repository/scripts
cd task2
mv task2_temp /home/ahmadawab/test-repository/scripts

echo "swapping names"
temp="temp_dir"
cd ~
cd test-repository/scripts 
mv task2 "$temp"
mv task2_temp task2
mv "$temp" task2_temp
