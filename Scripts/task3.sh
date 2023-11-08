#!/usr/bin/bash

# extract local ip address
ifconfig | grep inet | grep 192 | awk '{print $2}'
