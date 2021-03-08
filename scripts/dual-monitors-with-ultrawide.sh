#!/bin/sh
xrandr --output eDP-1 --mode 2560x1440 --pos 0x0 --rotate normal --output DP-1 --mode 3440x1440 --primary --pos 0x0 --rotate normal --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off

./reload-on-screen-change.sh
