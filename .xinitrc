#!/bin/bash

sudo modprobe rndis_host &
dunst &
pgrep -x sxhkd > /dev/null || exec sxhkd &
xrdb -load ~/.Xresources
picom & 
xwallpaper --center ~/Pictures/steampunker_wallpp.png &
pidof bspswallow || bspswallow &
b2.sh | lemonbar -p -B#1F1D19 -F#DEDEDE -u 3  -f "monospace-10" -g x27 | $SHELL &
while true;do sleep 10; [ $(xprintidle) -gt 300000 ] && xset dpms force off; done &
exec bspwm
