#!/usr/bin/bash

# saving time for time stamping
time=$(date +"%T")

# initializing dir, name, and res
dir=$PWD
name='_'
res="1300x720"

# looping over arguments
for (( i=1; i<=$#; i++)); do
	if [ ${!i} = -p ]; then
	# saving the path in dir variable
		j=$((i+1))
		dir=${!j}
	elif [ ${!i} = -t ]; then
	# making the temporary folder and saving in dir variable
		dir="$(mktemp -d -p "$PWD")"
	elif [ ${!i} = -o ]; then
	# saving the name in name variable
		j=$((i+1))
		name=${!j}
	elif [ ${!i} = -r ]; then
	# saving the resolution in res variable
		j=$((i+1))
		res=${!j}
	fi
done
if [ $1 = -? ]; then
	# displaying usage
	echo "Usage: ./task8.sh [ -p PATH | -t ] [ -o FILENAME ] [ -r RESOLUTION ]"
	echo "-p to save image on specific path."
  echo  "-t to save image in /tmp."
  echo  "-o to save image with specific name."
  echo  "-r to set custom resoltion for image."
elif [ $1 = -h ]; then
	# displaying usage
	echo "Usage: ./task8.sh [ -p PATH | -t ] [ -o FILENAME ] [ -r RESOLUTION ]"
	echo "-p to save image on specific path."
  echo  "-t to save image in /tmp."
  echo  "-o to save image with specific name."
  echo  "-r to set custom resoltion for image."
else
	# saving the path with image name
	directory="$dir/$name$time.jpg"
	echo $directory
	
	
	#site for downloading image
	site="https://source.unsplash.com/$res/"
	# downloading the image
	wget -q -O "$directory" $site
fi
