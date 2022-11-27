#!/bin/bash

export SXHKD_SHELL='/usr/bin/sh'
xsetroot -cursor_name left_ptr
feh --bg-scale ~/.config/feh/bg/linux.png ~/.config/feh/bgv/linux_tux_ver.png
exec bspwm
