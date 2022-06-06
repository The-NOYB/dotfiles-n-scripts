#!/bin/bash
bspc query -N -n .hidden.window -d focused > ~/cs/.scripts/.hidden
a=$(cat ~/cs/.scripts/.hidden | dmenu -sb "dark green")
bspc node "$a" -g hidden=off
bspc node -f "$a"
bspc query -N -n .hidden.window -d focused > ~/cs/.scripts/.hidden
