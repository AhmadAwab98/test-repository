#!/usr/bin/bash

# saving the file and folder from attributes
file="$1"
folder="$2"

# function to search file
function search_file {
	# saving the file and folder from attributes
	local file=$1
	local folder=$2
	# looping through the directory
	for entry in "$folder"/*; do
		# if directory then call the function again
		if [ -d $entry ]; then
			search_file "$file" "$entry"
		# if file then search if file is the one we were looking for
		elif [ -f $entry ] && [ "$(basename "$entry")" = "$file" ]; then 
			echo $entry
		fi
	done
}

search_file "$file" "$folder"
