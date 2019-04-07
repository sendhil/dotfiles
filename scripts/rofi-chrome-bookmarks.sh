#!/usr/bin/env bash

# Rofi dmenu
# rofi_dmenu(){
#   rofi -dmenu -p "Bookmarks"
# }


# rofi_dmenu(){
#   rofi -dmenu -i -matching fuzzy -only-match -p "Select a repository > "\
#     -location 0 -bg "#F8F8FF" -fg "#000000" -hlbg "#ECECEC" -hlfg "#0366d6"
# }

if [ "$#" -ne 1 ]; then
  echo "Not enough arguments"
  exit 1
fi

rofi_dmenu(){
  rofi -dmenu -i -matching fuzzy -p "Select bookmark"\
    -location 0 -bg "#F8F8FF" -fg "#000000" -hlbg "#ECECEC" -hlfg "#0366d6"
}

main() {
  url=$(~/go/bin/chromebookmarks --json-file-name "$1"  | rofi_dmenu | xargs -i -0 ~/go/bin/chromebookmarks --find-bookmark-url --json-file-name "$1" "{}")
  xdg-open "$url"
}

main "$1"

exit 0
