#!/usr/bin/bash


msg="$*"
len=$(( ${#msg} + 4))
for i in $(seq 1 $len); do printf '*'; done
printf "\n" 
echo "* $msg *"
for i in $(seq 1 $len); do printf '*'; done
printf "\n"
