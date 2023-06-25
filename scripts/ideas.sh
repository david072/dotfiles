#!/bin/bash

ideas_file="$HOME/scripts/.ideas"
if [[ ! -f $ideas_file ]]; then
  touch $ideas_file
fi

case "$1" in
  "new" | "add")
    number="1"
    if [[ $(stat -c%s $ideas_file) -ne 0 ]]; then
      # get last number from ordered list
      last_number=$(tac $ideas_file | grep -m 1 -E ".+" | sed -E 's/([0-9]+)\..*/\1/')
      echo $last_number
      number=$(( last_number + 1 ))
    fi

    echo "$number. $(echo ${@:2} | xargs)" >> $ideas_file
    echo "Idea added!"
  ;;
  "list" | "show")
    if [[ $(stat -c%s $ideas_file) -eq 0 ]]; then
      echo "No ideas!"
      exit 0
    fi

    echo $'# Ideas\n\n'"$(cat $ideas_file)" | glow
  ;;
  "remove")
    echo $(cat $ideas_file | grep -E "[^$2]\.") > $ideas_file
    echo "Idea #$2 removed!"
  ;;
  "clear")
    echo "" > $ideas_file
    echo "Ideas cleared!"
  ;;
  *) echo Unknown command!
  ;;
esac

