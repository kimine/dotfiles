#!/bin/bash

export SXHKD_SHELL='/usr/bin/sh'
xsetroot -cursor_name left_ptr
feh --bg-scale ~/.config/feh/bg/gruvbox-5.jpg  ~/.config/feh/bgv/gruvbox_hack1_v.png
exec bspwm
