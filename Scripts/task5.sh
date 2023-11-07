#!/usr/bin/bash

# saving the message in msg variable
msg="$*"

# counting the number of characters for the box
len=$(( ${#msg} + 4))

# displaying first line of characters
for i in $(seq 1 $len); do printf '*'; done
printf "\n" 

# displaying message with leading and trailing *
echo "* $msg *"

# displaying last line of characters
for i in $(seq 1 $len); do printf '*'; done
printf "\n"
