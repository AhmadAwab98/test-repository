#!/usr/bin/bash

# get timestamp
timestamp=$(date +"%T")

# initialize variables
output_folder=$PWD
file_name='_'
resolution="1300x720"

# parsing command line arguments
for (( i=1; i<=$# ; i++)); do
	if [ ${!i} = -p ]; then
	# set the output directory
		j=$((i+1))
		output_folder=${!j}
		
	elif [ ${!i} = -t ]; then
	# create a temporary folder for output
		output_folder="$(mktemp -d -p "$PWD")"
		
	elif [ ${!i} = -o ]; then
	# set the file name
		j=$((i+1))
		file_name=${!j}
		
	elif [ ${!i} = -r ]; then
	# set the resolution
		j=$((i+1))
		resolution=${!j}
		
	fi
done
if [ $1 = -? ]; then
	# display usage information
	echo "Usage: ./task8.sh [ -p PATH | -t ] [ -o FILENAME ] [ -r RESOLUTION ]"
	echo "-p to save image on specific path."
	echo  "-t to save image in /tmp."
	echo  "-o to save image with specific name."
	echo  "-r to set custom resoltion for image."
  
elif [ $1 = -h ]; then
	# display usage information
	echo "Usage: ./task8.sh [ -p PATH | -t ] [ -o FILENAME ] [ -r RESOLUTION ]"
	echo "-p to save image on specific path."
	echo  "-t to save image in /tmp."
	echo  "-o to save image with specific name."
	echo  "-r to set custom resoltion for image."
  
else
	# formulate output filepath
	output_path="$output_folder/$file_name$time.jpg"
	echo $output_path
	
	# define image URL
	image_source="https://source.unsplash.com/$resolution/"
	
	# download the image
	wget -q -O "$output_path" $image_source
fi
