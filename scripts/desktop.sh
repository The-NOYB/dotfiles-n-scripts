#/bin/bash
b_y=`bspc query -D`
a=`echo $b_y | awk '{print $1;}'`
b=`echo $b_y | awk '{print $2;}'`
c=`echo $b_y | awk '{print $3;}'`
[ `bspc query --names -D -d` == "I" ] && echo " %{B#303638} I %{B}%{A:bspc desktop -f $b:} II %{A}%{A:bspc desktop -f $c:} III %{A} " &
[ `bspc query --names -D -d` == "II" ] && echo " %{A:bspc desktop -f $a:} I %{A}%{B#303638} II %{B}%{A:bspc desktop -f $c:} III %{A} " &
[ `bspc query --names -D -d` == "III" ] && echo " %{A:bspc desktop -f $a:} I %{A}%{A:bspc desktop -f $b:} II %{A}%{B#303638} III %{B} " &
