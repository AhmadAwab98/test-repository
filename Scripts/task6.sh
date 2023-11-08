#!/usr/bin/bash

# check flag
# if first argument -s 
if [ $1 = '-s' ]; then
	# second argument is message and forth is character
	msg=$2
	box=$4
# if first argument -c 
elif [ $1 = '-c' ]; then
	# second argument is character and forth is message
	msg=$4
	box=$2
fi

# if no character specified
if [ -z "$box" ]; then
	# display without character
	echo $msg

else
	# calculate the line length
	len=$(( ${# msg} + 4))
	
	# print a line of character
	for i in $(seq 1 $len); do printf $box; done
	printf "\n" 
	
	# print the message surrounded by character
	echo "$box $msg $box"
	
	# print another line of character
	for i in $(seq 1 $len); do printf $box; done
	printf "\n"
fi
