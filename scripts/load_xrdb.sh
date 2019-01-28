#!/bin/bash -e

if [ ! -f /etc/redhat-release ]; then
  xrdb ~/.Xresources
fi

