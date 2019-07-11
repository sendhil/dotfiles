#!/bin/bash -e
killall -SIGUSR1 dunst # pause

~/.local/bin/betterlockscreen -s

killall -SIGUSR2 dunst # resume
