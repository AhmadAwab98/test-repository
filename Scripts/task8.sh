#!/usr/bin/bash

# copying the task to home folder 
cd ~

cd test-repository/Scripts

cp task8.sh $HOME/cronjob.sh

cd ~

cd Desktop

# making the directory to download image
mkdir Images

cd ~

chmod +x cronjob.sh

# starting the cronjob
crontab -l | { echo "*/1 * * * * home/ahmadawab/cronjob.sh -p home/ahmadawab/Desktop/Images -o image_ -r 1300x720";} | crontab -
