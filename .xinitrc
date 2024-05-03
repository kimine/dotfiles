#!/bin/bash

export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx

export DRI_PRIME=1
export SXHKD_SHELL='/usr/bin/sh'
xsetroot -cursor_name left_ptr
xhost +si:localuser:$USER > /dev/null
feh --bg-scale ~/.config/feh/bg/gruvbox-5.jpg  ~/.config/feh/bgv/gruvbox_hack2_v.png
exec bspwm
