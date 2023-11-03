#!/usr/bin/bash

line=$2
if [ $1 = '-s' ]; then
	msg=$2
	box=$4
elif [ $1 = '-c' ]; then
	msg=$4
	box=$2
fi
if [ -z "$box" ]; then
	echo $msg

else
	len=$(( ${#msg} + 4))
	for i in $(seq 1 $len); do printf $box; done
	printf "\n" 
	echo "$box $msg $box"
	for i in $(seq 1 $len); do printf $box; done
	printf "\n"
fi
