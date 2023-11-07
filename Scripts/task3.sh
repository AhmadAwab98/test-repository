#!/usr/bin/bash

# extracting local ip address from ifconfig
ifconfig | grep inet | grep 192 | awk '{print $2}'
