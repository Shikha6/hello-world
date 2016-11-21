#!/bin/bash
# Some comments
#testing
j=1

i=5

dir_list="/home /root /var"

for dirs in $dir_list; do

output=$(du -ak $dirs | sort -n -r | awk '{print $1}' | sed 's/K//g')

for usage in $output; do
