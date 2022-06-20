#!/usr/bin/bash
img=(`find ~/.config/wal/ -name '*' -exec file {} \; | grep -o -P '^.+: \w+ image' | cut -d':' -f1`)
while true
do
  # feh --bg-scale "${img[$RANDOM % ${#img[@]} ]}"
  nitrogen --set-scaled --random "${img[$RANDOM % ${#img[@]} ]}" --save
  sleep 8m 
done
