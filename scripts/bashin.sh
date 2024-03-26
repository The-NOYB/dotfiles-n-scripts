#!/bin/bash

printf "$HOME, $TERM\n"


echo give values for x,y and some
read x y some
echo so uh ${some:-"what"} # default value is what
printf " x is ${x:="blue"}, and y is ${y:="69"}\n" # set val of var if val not provided
echo "the var value is $some and the leng is ${#some}." # get length of value
unset x y # this is useless and unnecessary
printf "values of x and y after unset $x, $y\n"
echo 

# taking a limited input
echo "gimme a number boss"
read -n 2 count # read upto only 2 digits
[ $count -eq 20 ] && echo "count is 20" || [ $count -gt 5 ] && echo " $count is greater than 5" || echo $count
echo

# subshell intro
pwd # get cwd
(cd .. ; pwd) # changing dir in subshel ()  and pwd
pwd
echo



# basic null and not null
[ -z "" ] && echo check null
[ -n "1" ] && echo check not null

# file existance
[ -f "pcmode" ] && echo check file exists
[ -d ".." ] && echo check dir exists
[ -e pcmode -a -e ../../Arduino/ ] && echo check file/dir exists # -a is and -o is or

# Permission checks
[ -r bashin.sh ] && echo check readable file
[ -w bashin.sh ] && echo check writable file
[ -x bashin.sh ] && echo check executable file
echo

# making bash good
set -e # exit on error
set -u # exit on unset var
set -o pipefail # exit on pipefail
# set -euo pipefail # a robust way to do it
echo

# arrays
myarr=(1 2 3 4 5)
echo $myarr # by default it prints only 1st element
echo ${myarr[@]}, with len of ${#myarr[@]} # @ for all
echo ${myarr[3]}

# for loop
for item in ${myarr[@]};do
    echo $item
done
echo

# C-Style for loop
#for ((i = 0; i < 5; i++)); do echo $i; done
#
# Bash range
#for i in {1..10}; do echo $i; done

# sourcing a file will take all the local variables from another script and use it gloval vars
# . ./script.sh # this is sourcing
# ./script.sh # this is subshell

# function
function fibb (){
    local a=0
    local b=1
    echo $a
    echo $b
    for i in $(seq 1 $1); do
        b=$(( $b + $a )) 
        a=$(( $b - $a ))
        echo $(( $i + 2 )) fibbonacci number is $b 
    done
    }

fibb 50 # functions are not necessary you can use source
echo 

str="one and two"

echo ${str##* } # print last word
echo ${str%% *} # print first word

echo deleting from begining ${str#*n}
echo deleting from ending ${str%n*}

printf "check the comments\n"
#mv -i source destination
#"" word spliting,tilde, braces r supressed using  but arithmetic,command subsis r performed
#'' all r surpressed
# on posix mode [[:"alnum", "alpha", "ascii", "blank", "cntrl", "digit", "graph", "lower", "print", "punct", "space", "upper", "word","xdigit":]]* are classes
