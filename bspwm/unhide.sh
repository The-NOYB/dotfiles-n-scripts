#!/bin/bash
#the comeneted part of the script is a much simpler version which only gives window ids as a option to choose the window you are unhiding
n=$(bspc query -N -n .hidden.window -d focused | grep -c "$")
m=0
while ((n>m)); do ((m+=1)); a=$(bspc query -N -n .hidden.window -d focused | sed -n "$m"p); printf "$a $m "; xprop -id $a | awk '/^WM_CLASS/{print $4}'| tr -d \"; done > ~/cs/.files/.yah
d=$(awk '{print $2, $3}' ~/cs/.files/.yah | dmenu -sb "dark green" | awk '{print $1}')
[ -z $d ] || c=$(sed -n "$d"p ~/cs/.files/.yah | awk '{print $1}')
bspc node "$c" -g hidden=off
bspc node -f "$c"

#a=$(bspc query -N -n .hidden.window -d focused | dmenu -sb "dark green")
#bspc node "$a" -g hidden=off
#bspc node -f "$a
