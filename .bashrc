# removing some files i dont like
( rm ~/.bash_history-* ~/dhat-heap.json .py* ) 2> /dev/null

PS1="\[$(tput bold)\]\[$(tput setaf 3)\][\[$(tput sgr0)\]\[$(tput bold)\]\[$(tput setaf 4)\]no\[$(tput sgr0)\]\[$(tput bold)\]\[$(tput setaf 1)\]yb\[$(tput sgr0)\]\[$(tput bold)\]@\[$(tput setaf 2)\]laptop\[$(tput sgr0)\]\[$(tput bold)\]\[$(tput setaf 246)\] \w\[$(tput sgr0)\]\[$(tput bold)\]\[$(tput setaf 3)\]]\[$(tput sgr0)\]\[$(tput bold)\]$ \[$(tput sgr0)\]"

# aliases
alias ka='killall -q'
alias radeontop='radeontop -T'
alias wifi-search='nmcli dev wifi' 
alias wifi-connect='sudo nmcli dev wifi connect'
alias wifi-new-connect='sudo nmcli dev --ask wifi connect'
alias wifi-disconnect='nmcli dev dis wlo1'
alias beeg-files='du -h | sort -hr | sed 20q'
alias runpy='reset && time python3'
alias headphones='bluetoothctl power on && bluetoothctl connect 08:EB:ED:03:3C:97'
alias noheadphones='bluetoothctl disconnect 08:EB:ED:03:3C:97 && bluetoothctl power off'
alias mysql='sudo mysql -u root -p'
alias balls='while true;do printf "balls ";sleep 0.0001;done'
alias arduino='arduino-cli'
alias arduino-cli='arduino-cli --config-file $XDG_CONFIG_HOME/arduino15/arduino-cli.yaml'
alias lemonstart='b.sh | lemonbar -p -B#1F1D19 -F#DEDEDE -u 3  -f "monospace-10" -g x27'
alias normdisp='xrandr --output eDP-1 --scale 1'
alias nettest='curl parrot.live'
alias clearswap='rm /home/noyb/.local/state/vim/swap/*'

## default programs
#export EDITOR="vim"
#export BROWSER="qutebrowser"
#export TERMINAL="urxvt"
#
## setting a xdg dirs
#export XDG_CONFIG_HOME="$HOME/.config"
#export XDG_CACHE_HOME="$HOME/.cache"
#export XDG_DATA_HOME="$HOME/.local/share"
#export XDG_STATE_HOME="$HOME/.local/state"
#
## dir vars for programs
#export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
#export W3M_DIR="$XDG_STATE_HOME/w3m"
#export R_HOME_USER="$HOME/.config/R"
#export R_PROFILE_USER="$HOME/.config/R/profile"
#export R_HISTFILE="$HOME/.config/R/history"
#export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
#export ICEAUTHORITY="$XDG_CACHE_HOME/ICEauthority"

treefetch -b
