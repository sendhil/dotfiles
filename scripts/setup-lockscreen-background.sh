#!/bin/bash -e

BACKGROUND_IMAGE=$(ls ~/DesktopBackgrounds/desktop | shuf -n 1)
~/.local/bin/betterlockscreen -u $BACKGROUND_IMAGE
