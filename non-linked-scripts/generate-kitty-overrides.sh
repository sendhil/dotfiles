#!/usr/bin/env bash

if [[ $OSTYPE == 'darwin'* ]]; then
  cp ./kitty/.config/kitty/macos.conf ./kitty/.config/kitty/generated.conf
else
  cp ./kitty/.config/kitty/linux.conf ./kitty/.config/kitty/generated.conf
fi
