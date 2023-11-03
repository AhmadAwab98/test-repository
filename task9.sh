#!/usr/bin/bash

cd ~

cd Desktop

mkdir images

crontab -l | { echo "*/2 * * * * /home/ahmadawab/test-repository/scripts/task8.sh -p ~/Desktop/images -o `date +\%d-\%m_\%H:\%M` -r 1300x720";} | crontab -
