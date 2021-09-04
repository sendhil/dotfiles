#!/bin/bash -e

killall -SIGUSR1 dunst # pause

~/.local/bin/betterlockscreen -l dim

killall -SIGUSR2 dunst # resume
