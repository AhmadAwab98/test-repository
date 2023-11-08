#!/usr/bin/bash

# copy the task to home folder 
cp task8.sh $HOME/cronjob.sh

cd ~/Desktop

# make the directory to download image
mkdir Images

# navigate to home directory
cd ~

# make the cronjob script executable
chmod +x cronjob.sh

# start the cronjob
crontab -l | { echo "*/1 * * * * home/ahmadawab/cronjob.sh -p home/ahmadawab/Desktop/Images -o image_ -r 1300x720";} | crontab -
