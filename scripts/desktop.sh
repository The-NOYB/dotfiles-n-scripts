#!/bin/bash

[ `bspc query --names -D -d` == "Desktop" ] && echo " %{A:bspc desktop -f next:}%{B#303638} X %{B} %{A}" &
[ `bspc query --names -D -d` == "I" ] && echo " %{B#303638} I %{B}%{A:bspc desktop -f II:} II %{A}%{A:bspc desktop -f III:} III %{A} " &
[ `bspc query --names -D -d` == "II" ] && echo " %{A:bspc desktop -f I:} I %{A}%{B#303638} II %{B}%{A:bspc desktop -f III:} III %{A} " &
[ `bspc query --names -D -d` == "III" ] && echo " %{A:bspc desktop -f I:} I %{A}%{A:bspc desktop -f II:} II %{A}%{B#303638} III %{B} " &
