#!/usr/bin/bash

# store input message
msg="$*"

# calculate the line length
len=$(( ${# msg} + 4))

# print a line of asterisks
for i in $(seq 1 $len); do printf '*'; done
printf "\n" 

# print the message surrounded by asterisks
echo "* $msg *"

# print another line of asterisks
for i in $(seq 1 $len); do printf '*'; done
printf "\n"
