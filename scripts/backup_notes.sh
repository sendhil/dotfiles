#!/bin/bash -e

# Inspired from - https://medium.com/@fotios.floros/linux-backup-script-1722cc9c2bf6

if [ ! -d "$HOME/Dropbox" ]; then
  echo "Dropbox isn't setup"
  exit 1
fi

if [ ! -d "$HOME/Dropbox/general-notebook" ]; then
  echo "No general notes on this computer"
  exit 0
fi

mkdir -p "$HOME/Dropbox/Backups/general-notes"

BACKUPTIME=$(date +%b-%d-%y)
DESTINATION=$HOME/Dropbox/Backups/general-notes/general-notes-$BACKUPTIME.tar.gz
SOURCEFOLDER=$HOME/Dropbox/general-notebook

tar -cpzf "$DESTINATION" -C "$SOURCEFOLDER" .
