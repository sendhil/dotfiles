#!/bin/bash -e

# Inspired from - https://medium.com/@fotios.floros/linux-backup-script-1722cc9c2bf6

if [ ! -d "$HOME/Dropbox" ]; then
  echo "Dropbox isn't setup"
  exit 1
fi

mkdir -p "$HOME/Dropbox/Backups/todo"

BACKUPTIME=$(date +%b-%d-%y)
DESTINATION=$HOME/Dropbox/Backups/todo/todo-$BACKUPTIME.tar.gz
SOURCEFOLDER=$HOME/Dropbox/todo

tar -cpzf "$DESTINATION" -C "$SOURCEFOLDER" .
