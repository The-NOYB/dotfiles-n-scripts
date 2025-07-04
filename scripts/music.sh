#!/bin/bash

cd /mnt/D/Music/ || alert=1

[ -n "$alert" ] && notify-send "/mnt/D is not mounted" && exit 1

song=$( (find -iname "*flac" && find  -iname "*mp3") | rev | cut -d"/" -f 1 | rev | dmenu -i -sb "dark green" -p "Choose Song")

echo $song
path_to_song=$(find -iname "$song")

[ -z $path_to_song ] && exit 1

vlc "$path_to_song" & cd
