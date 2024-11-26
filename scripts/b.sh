#!/bin/bash

clock() {
   date "+%e %B %Y, %H:%M" 
}

battery() {
    status=$(cat /sys/class/power_supply/BAT1/status)
    echo $(cat /sys/class/power_supply/BAT1/capacity)% \(${status:0:1}\) 
}

window(){
    xprop -id `bspc query -N -n .window.focused` | awk '/^WM_CLASS/{print $4}'| tr -d \" | cut -c -40 
}

mem() {
    free -h | awk '/^Mem:/{print $3"/"$2}'
}

temp() {
    echo $(($(cat /sys/class/thermal/thermal_zone0/temp)/1000))°C
}

d(){
    bash desktop.sh
}

vol(){
   amixer | grep -q 'off' && echo "off%{-u}" || echo "`amixer get Master | sed -n 's/^.*Le.*\[\([0-9]\+\)%.*$/\1/p'| uniq`%%{-u}" 
}

wifi(){
   a=$(nmcli connection | grep -E "wlan0|eth0" | cut --characters\=1-23 | sed -n 1p)
   [ -z "$a" ] && echo "Disconnected" || echo $a
}

while  true
do
    BAR_INPUT="%{l}%{U#247948} %{F#23ba67}┃%{F}$(d) %{F#23ba67}┃┃ %{F} %{+u}$(window)%{-u}%{U} %{c} %{B#23ba67}%{F#1F1D19} $(clock) %{r}%{F}%{B}%{U#247948}%{F#23ba67} ┃ ↑↓ %{F}%{+u}$(wifi)%{-u} %{F#23ba67} ┃ λ %{F}%{+u}$(vol) %{F#23ba67} ┃ Δ %{F}%{+u}$(temp)%{-u} %{F#23ba67} ┃ Ξ %{F}%{+u}$(mem)%{-u} %{F#23ba67} ┃ ± %{F}%{+u}$(battery)%{-u} %{F#23ba67} ┃ %{F}%{U}%{F}%{A:~/.local/bin/off:}:~:%{A} %{}"
    echo $BAR_INPUT
    sleep 1
done

