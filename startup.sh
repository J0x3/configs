#! /bin/bash

xfce4-power-manager
xmodmap -e "clear lock"
xmodmap -e "keysym Caps_Lock = Escape"
redshift -O 4200
#ibus-daemon --xim &
