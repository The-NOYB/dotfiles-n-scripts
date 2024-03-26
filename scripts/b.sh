#!/bin/bash

clock() {
   date "+%e %B %Y, %H:%M" 
}

battery() {
    echo "± `cat /sys/class/power_supply/BAT1/capacity`% (`cat /sys/class/power_supply/BAT1/status`)" #echo -e "\uf242 Battery: 0" 
}

window(){
    xprop -id `bspc query -N -n .window.focused` | awk '/^WM_CLASS/{print $4}'| tr -d \" | cut -c -40 
}

mem() {
    free -h | awk '/^Mem:/{print $3"/"$2}'
}

temp() {
    acpi -t | awk '/^Thermal 1:/ {print $4"°"$6}'
}

d(){
    bash desktop.sh
}

vol(){
   amixer | grep -q 'off' && echo "off%{-u}" || echo "`amixer get Master | sed -n 's/^.*\[\([0-9]\+\)%.*$/\1/p'| uniq`%%{-u}" 
}

wifi(){
   nmcli dev | awk '/ connected/{print $1 }' 
}

while  true
do
    BAR_INPUT="%{l}%{U#d63e66} ┃ $(d) ┃┃ %{} %{+u}$(window)%{-u}%{U} %{c}%{B#23ba67}%{F#000000} $(clock) %{F}%{B} %{r}%{F#51e2e2}%{U#51e2e2}┃ %{+u}↑↓ $(wifi)%{-u}%{U}%{F} %{F#f260de}%{U#f260de}┃ %{+u}λ $(vol) %{U}%{F}%{F#ef7f0e}%{U#ef7f0e}┃ %{+u}Δ $(temp)%{-u}%{U}%{F} %{F#00ff00}%{U#00ff00}┃ %{+u}Ξ $(mem)%{-u}%{U}%{F} %{F#efef0e}%{U#efef0e}┃ %{+u}$(battery)%{-u}%{U}%{F} %{F#d63e66}┃%{F} %{A:systemctl suspend:}%{A2:sudo reboot:}%{A3:sudo shutdown now:}:~:%{A}%{A}%{A} %{}"
    echo $BAR_INPUT
    sleep 1
done

