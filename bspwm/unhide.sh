#!/bin/bash
a=$(bspc query -N -n .hidden.window -d focused | dmenu -sb "dark green")
bspc node "$a" -g hidden=off
bspc node -f "$a
