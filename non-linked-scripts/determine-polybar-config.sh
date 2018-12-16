#!/bin/bash -e

if xrandr | grep --quiet 2560x1440; then
  echo polybar-laptop
else
  echo polybar
fi 
