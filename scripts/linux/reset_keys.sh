#!/bin/bash -e

xmodmap -e "remove control = Alt_L"
xmodmap -e "add mod1 = Alt_L"

xmodmap -e "remove mod1 = Super_L"
xmodmap -e "add mod4 = Super_L"
