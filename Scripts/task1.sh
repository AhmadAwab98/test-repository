#!/usr/bin/bash

# assign command line arguments to variables
file="$1"
folder="$2"

# function to search file
function search_file {
	
	# assign function arguments to variables
	local file=$1
	local folder=$2
	
	# loop through the directory
	for entry in "$folder"/*; do
		# if it is a directory
		if [ -d $entry ]; then
			
			# recursive call to function
			search_file "$file" "$entry"
		
		# if it is the desired file
		elif [ -f $entry ] && [ "$(basename "$entry")" = "$file" ]; then
		
		# display the path
			echo $entry
		fi
	done
}

search_file "$file" "$folder"
