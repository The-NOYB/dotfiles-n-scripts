#fortune | cowsay  -f bud-frogs
treefetch -b

# stops stopping of terminal by CTRL+S, Hate this shit
stty -ixon

# removing some files i dont like
( rm ~/.bash_history-* ~/dhat-heap.json .py* ) 2> /dev/null

PS1="\[$(tput bold)\]\[$(tput setaf 3)\][\[$(tput sgr0)\]\[$(tput bold)\]\[$(tput setaf 4)\]no\[$(tput sgr0)\]\[$(tput bold)\]\[$(tput setaf 1)\]yb\[$(tput sgr0)\]\[$(tput bold)\]@\[$(tput setaf 2)\]laptop\[$(tput sgr0)\]\[$(tput bold)\]\[$(tput setaf 246)\] \w\[$(tput sgr0)\]\[$(tput bold)\]\[$(tput setaf 3)\]]\[$(tput sgr0)\]\[$(tput bold)\]$ \[$(tput sgr0)\]"

# setting a xdg dirs
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# default programs
export EDITOR="vim"
export BROWSER="qutebrowser"
export TERMINAL="urxvt"

# dir vars for programs
export RISCV="/opt/riscv/"
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
export W3M_DIR="$XDG_STATE_HOME/w3m"
export R_HOME_USER="$HOME/.config/R"
export R_PROFILE_USER="$HOME/.config/R/profile"
export R_HISTFILE="$HOME/.config/R/history"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export ICEAUTHORITY="$XDG_CACHE_HOME/ICEauthority"
export ANDROID_HOME=$XDG_DATA_HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$XDG_DATA_HOME/flutter/bin
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$PATH":"$RISCV/bin"

# aliases
alias ka='killall -q'
alias radeontop='radeontop -T'
alias wifi-search='nmcli dev wifi' 
alias wifi-connect='sudo nmcli dev wifi connect'
alias wifi-new-connect='sudo nmcli dev --ask wifi connect'
alias wifi-disconnect='nmcli dev dis wlo1'
alias beeg-dirs='du -csh .[!.]* * | sort -h | tail'
alias runpy='reset && time python3'
alias runpyg='reset && time python3.11 -B'
alias headphones='bluetoothctl power on && bluetoothctl connect 08:EB:ED:03:3C:97 && pactl set-sink-port 0 analog-output-headphones' 
alias noheadphones='bluetoothctl disconnect 08:EB:ED:03:3C:97 && bluetoothctl power off && pactl set-sink-port 0 analog-output-speaker'
alias mysql='sudo mysql -u root'
alias balls='while true;do printf "balls ";sleep 0.0001;done'
alias arduino-cli='arduino-cli --config-file $XDG_CONFIG_HOME/arduino15/arduino-cli.yaml'
alias lemonstart='b.sh | lemonbar -p -B#1F1D19 -F#DEDEDE -u 3  -f "monospace-10" -g x27 | $SHELL '
alias nettest='curl parrot.live'
alias clearswap='rm /home/noyb/.local/state/vim/swap/*'
alias known-networks='nmcli connection'
alias study_time='time=0 && while true; do time=$(($time+10));sleep 600 && notify-send "You can do it! ($time mins)";done'
alias nohist='set +o history'
alias earphones='bluetoothctl power on && bluetoothctl connect C5:5C:08:04:11:D0 && pactl set-sink-port 0 analog-output-headphones'
alias safe_wallpaper='xwallpaper --center Pictures/stray-game--hd-wallpaper-uhdpaper.com-506@0@h.jpg'
alias scale_720='xrandr --output eDP-1 --mode 1280x720'
alias scale_tf2='xrandr --output eDP-1 --mode 640x480'
alias scale_600='xrandr --output eDP-1 --mode 800x600'
alias scale_normal='xrandr --output eDP-1 --mode 1920x1080'
alias chromium='chromium --wm-window-animations-disabled --animation-duration-scale=0'
alias mount_games='sudo mount /dev/disk/by-label/Games Games/'
alias unmount_all='sudo umount /mnt/C /mnt/D Games'
alias tf2='cd .local/share/Steam/steamapps/common/Team\ Fortress\ 2/'
alias scrcpy='scrcpy -S'
alias mkdir='mkdir -p'
