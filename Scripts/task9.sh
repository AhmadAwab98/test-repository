#!/usr/bin/bash

cd ~

cd test-repository/Scripts

cp task8.sh $HOME/cronjob.sh

cd ~

cd Desktop

mkdir Images

chmod +x cronjob.sh

crontab -l | { echo "*/1 * * * * home/ahmadawab/cronjob.sh -p home/ahmadawab/Desktop/Images -o jpg -r 1300x720";} | crontab -
