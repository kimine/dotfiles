#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar example 2>&1 | tee -a /tmp/polybar$m.log  & disown
  done
else
  polybar example 2>&1 | tee -a /tmp/polybar$m.log  & disown
fi
