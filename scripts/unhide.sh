#!/bin/bash

# getting input and i guess declaring some variables
n=$(bspc query -N -n .hidden.window -d focused | grep -c "$")
m=0
c=""

# loop which basically writes to a file
while ((n>m)); 
do ((m+=1)); 
a=$(bspc query -N -n .hidden.window -d focused | sed -n "$m"p); 
printf "$a $m "; 
xprop -id $a | awk '/^WM_CLASS/{print $4}'| tr -d \"; 
done > ~/cs/files/.yah

# reading that file and selecting one window using dmenu
d=$(awk '{print $2, $3}' ~/cs/files/.yah | dmenu -sb "dark green" | awk '{print $1}')

# if something is selected then fetch the window id
[ -z $d ] || c=$(sed -n "$d"p ~/cs/files/.yah | awk '{print $1}')

# finally using id to unhide the window
bspc node "$c" -g hidden=off
bspc node -f "$c"
