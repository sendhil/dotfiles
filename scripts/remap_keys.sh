#!/usr/bin/env bash

xmodmap -e "remove mod1 = Alt_L"
xmodmap -e "add control = Alt_L"

xmodmap -e "remove mod4 = Super_L"
xmodmap -e "add mod1 = Super_L"
