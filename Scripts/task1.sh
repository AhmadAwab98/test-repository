#!/usr/bin/bash

# Saving the file and folder from attributes
file="$1"
folder="$2"

#Function to search file
function search_file {
	# Saving the file and folder from attributes
	local file=$1
	local folder=$2
	# Looping through the directory
	for entry in "$folder"/*; do
		# If directory then call the function again
		if [ -d $entry ]; then
			search_file "$file" "$entry"
		# If file then search if file is the one we were looking for
		elif [ -f $entry ] && [ "$(basename "$entry")" = "$file" ]; then 
			echo $entry
		fi
	done
}

search_file "$file" "$folder"
