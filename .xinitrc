#!/bin/bash

export DRI_PRIME=1
export SXHKD_SHELL='/usr/bin/sh'
xsetroot -cursor_name left_ptr
feh --bg-scale ~/.config/feh/bg/gruvbox-5.jpg  ~/.config/feh/bgv/gruvbox_hack2_v.png
exec bspwm
