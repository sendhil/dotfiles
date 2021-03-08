#!/bin/sh

xrdb ~/.Xresources

killall polybar
~/.config/polybar/launch.sh

i3-msg reload
i3-msg restart
