#!/usr/bin/bash

site="https://source.unsplash.com/1920x1080/"

dir="$PWD/image.jpg"

wget -O "$dir" $site

echo $dir
