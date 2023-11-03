#!/usr/bin/bash

for (( i=1; i<=$#; i++)); do
	if [ ${!i} = -p ]; then
		j=$((i+1))
		dir=${!j}
	elif [ ${!i} = -t ]; then
		dir="/tmp"
	elif [ ${!i} = -o ]; then
		j=$((i+1))
		name=${!j}
	elif [ ${!i} = -r ]; then
		j=$((i+1))
		res=${!j}
	fi
done
if [ $1 = -? ]; then
	echo "Usage: ./task8.sh [ -p PATH | -t ] [ -o FILENAME ] [ -r RESOLUTION ]"
	echo "-p to save image on specific path."
  echo  "-t to save image in /tmp."
  echo  "-o to save image with specific name."
  echo  "-r to set custom resoltion for image."
elif [ $1 = -h ]; then
	echo "Usage: ./task8.sh [ -p PATH | -t ] [ -o FILENAME ] [ -r RESOLUTION ]"
	echo "-p to save image on specific path."
  echo  "-t to save image in /tmp."
  echo  "-o to save image with specific name."
  echo  "-r to set custom resoltion for image."
else
	directory="$dir/$name.jpg"
	site="https://source.unsplash.com/$res/"
	wget -q -O "$directory" $site
fi
