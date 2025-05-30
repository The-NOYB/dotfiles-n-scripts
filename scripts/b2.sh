#!/bin/bash

clock() {
   date "+%e %B %Y, %H:%M" 
}

battery() {
    status=$(cat /sys/class/power_supply/BAT1/status)
    echo $(cat /sys/class/power_supply/BAT1/capacity)% \(${status:0:1}\) 
}

window(){
    focused=$(bspc query -N -n .window.focused) && xprop -id $focused | awk '/^WM_CLASS/{print $4}'| tr -d \" | cut -c -40
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
   volume=$(pamixer --get-volume-human) && [ $volume == "muted" ] && echo "off" || echo $volume
#   amixer | grep -q 'off' && echo "off%{-u}" || echo "`amixer get Master | sed -n 's/^.*Le.*\[\([0-9]\+\)%.*$/\1/p'| uniq`%%{-u}" 
}

wifi(){
   a=$(nmcli connection | grep -E "wlan0|eth0|eth1" | cut --characters\=1-17 | sed -n 1p)
   [ -z "$a" ] && echo "Disconnected" || echo $a
}

while  true
do
    BAR_INPUT="%{l}%{U#689d6a} %{F#689d6a}┃%{F}$(d) %{F#689d6a}┃┃ %{F} %{+u}$(window)%{-u}%{U} %{c} %{B#689d6a}%{F#1F1D19} $(clock) %{r}%{F}%{B}%{U#689d6a}%{F#689d6a} ┃ ↑↓ %{F}%{+u}$(wifi)%{-u} %{F#689d6a} ┃ λ %{F}%{+u}$(vol)%{-u} %{F#689d6a} ┃ Δ %{F}%{+u}$(temp)%{-u} %{F#689d6a} ┃ Ξ %{F}%{+u}$(mem)%{-u} %{F#689d6a} ┃ ± %{F}%{+u}$(battery)%{-u} %{F#689d6a} ┃ %{F}%{U}%{F}%{A:~/.local/bin/off:}:~:%{A} %{}"
    echo $BAR_INPUT
    sleep 1
done

