#!/usr/bin/bash

# saving message and character in the variables 
if [ $1 = '-s' ]; then
	msg=$2
	box=$4
elif [ $1 = '-c' ]; then
	msg=$4
	box=$2
fi

# if no character then display only message
if [ -z "$box" ]; then
	echo $msg

else
	# counting the number of characters for the box
	len=$(( ${# msg} + 4))
	
	# displaying first line of characters
	for i in $(seq 1 $len); do printf $box; done
	printf "\n" 
	
	# displaying message with leading and trailing character
	echo "$box $msg $box"
	
	# displaying last line of characters
	for i in $(seq 1 $len); do printf $box; done
	printf "\n"
fi
