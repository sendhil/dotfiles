#!/bin/sh
xrandr --output DP-1 --mode 3440x1440 --pos 0x0 --rotate normal --output eDP-1 --off

./linux/reload-on-screen-change.sh
