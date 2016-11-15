#!/bin/bash

k=1

i=5

dir_list="/home /root /var"

for dirs in $dir_list; do

output=$(du -ak $dirs | sort -n -r | awk '{print $1}' | sed 's/K//g')

for usage in $output; do



if (( usage>i ))

then

j=$(du -ak /home |sort -n -r | head -n$k |tail -1 | awk '{print $2}')



echo "$j is $usage full"

fi

let k=$k+1




done
done
