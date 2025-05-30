#!/bin/bash

# emptying the file
echo "" > ~/cs/files/.win_data

focused_window=$(bspc query -N -n .window.focused)
fullscreen_window=$(bspc query -N -n .fullscreen.window -d focused)

# arrays of all windows and all hidden windows
all_windows=($(bspc query -N -n .window -d focused))
hidden_windows=($(bspc query -N -n .hidden.window -d focused))
declare -a windows_to_remove

# getting all the windows that are hidden in $all_windows
for _hid in ${hidden_windows[@]}; do
    count=0
    for _win in ${all_windows[@]}; do
        [ $_win == $_hid ] && windows_to_remove+="$count "
        count=$(( $count+1 ))
    done
done

# removing all hidden windows from $all_windows
for _win in $windows_to_remove; do
    unset all_windows[$_win]
done

echo ${all_windows[@]}

$cat ~/cs/files/.win_data

# cycle through all focused windows only
# if a window is fullscreen (and not hidden) then hide the fullscreen window and then cycle, unhide the fullscreen window if it is the next
# if the any window was hidden before the script then do not cycle through it

# get all windows loop through if they are fullscreen, hidden, both, or normal
