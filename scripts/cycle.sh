#!/bin/bash

# get focused window and if focused window is fullscreen
focused_window=$(bspc query -N -n .window.focused)
focused_window_is_fullscreen=$(bspc query -N -n $focused_window.fullscreen)
[ -z $focused_window_is_fullscreen ] && focused_window_is_fullscreen=0 || focused_window_is_fullscreen=1


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

len=${#all_windows[@]}
[ $len == 1 ] && exit 1

# bool for gettin next window and iterator
next_is=0
i=0

for _win in ${all_windows[@]}; do
    [ -z $first ] && first=$_win    # getting the first unhidden window
    [ $next_is == 1 ] && dest_window=$_win && break
    [ $_win == $focused_window ] && next_is=1   # enablingthe bool when we find the focused window
done

# setting destinaton window to first unhidden window in the case if destinaton window is the last window
[ -z $dest_window ] && dest_window=$first
#echo destinaton window $dest_window

# hidding the focused fullscreen window
[ $focused_window_is_fullscreen == 1 ] && bspc node $focused_window -g hidden

# changing focus to destination window
bspc node -f $dest_window

#echo all unhidden windows ${all_windows[@]} and currectly focused window $focused_window
