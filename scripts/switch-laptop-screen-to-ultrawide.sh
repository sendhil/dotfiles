#!/bin/sh
xrandr --output HDMI-2 --off --output HDMI-1 --primary --mode 3440x1440 --pos 0x0 --rotate normal --output DP-1 --off --output eDP-1 --off --output DP-2 --off

xrdb ~/.Xresources
i3-msg reload
i3-msg restart
