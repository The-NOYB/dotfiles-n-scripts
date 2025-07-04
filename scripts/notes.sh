#!/bin/bash


choice=$(ls /home/$USER/cs/ | dmenu -sb "dark green" -p "Choose")

[ -z $choice ] && exit 1

path=/home/noyb/cs/$choice

urxvt-256color -cd $path -e vim -c NERDTree
