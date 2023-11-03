#!/usr/bin/bash

file="$1"
folder="$2"

function search_file {
	local file=$1
	local folder=$2
	for entry in "$folder"/*; do
		if [ -d $entry ]; then
			search_file "$file" "$entry"
		elif [ -f $entry ] && [ "$(basename "$entry")" = "$file" ]; then 
			echo $entry
		fi
	done
}

search_file "$file" "$folder"
