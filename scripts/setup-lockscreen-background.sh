#!/bin/bash -e

BACKGROUND_IMAGE=$(cat ~/.fehbg | grep feh  | cut -d "'" -f2)
if [ -z "$BACKGROUND_IMAGE" ]
then
  betterlockscreen -u ~/DesktopBackgrounds/desktop
else 
  betterlockscreen -u $BACKGROUND_IMAGE
fi
