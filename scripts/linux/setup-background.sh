#!/bin/bash -e

BACKGROUND_IMAGE=$(ls ~/DesktopBackgrounds/desktop | shuf -n 1)
feh --bg-scale ~/DesktopBackgrounds/desktop/$BACKGROUND_IMAGE
~/.local/bin/betterlockscreen -u ~/DesktopBackgrounds/desktop/$BACKGROUND_IMAGE &
