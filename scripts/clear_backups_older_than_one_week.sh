#!/bin/bash -e

if [ ! -d "$HOME/Dropbox" ]; then
  echo "Dropbox isn't setup"
  exit 1
fi

function removefilesat() {
  destination_folder=$1
  if [ ! -d "$destination_folder" ]; then
    echo "Folder doesn't exist"
    return 1
  fi
  find "$destination_folder" -type f -mtime +7 -exec logger "Removing old backup located at : " {} \;
  find "$destination_folder" -type f -mtime +7 -exec rm {} \;
}

removefilesat "$HOME/Dropbox/Backups/todo"
removefilesat "$HOME/Dropbox/Backups/lyft-notes"
removefilesat "$HOME/Dropbox/Backups/general-notes"
