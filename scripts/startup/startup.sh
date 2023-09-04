#!/bin/bash

feh --bg-fill $(shuf -e -n1 ~/Pictures/wallpapers/*)

# enable number keys on numpad
xdotool key --clearmodifiers Num_Lock

cd ~/scripts/startup/
# Configure right monitor layout
bash ./workspace_right.sh
# Start background tasks (tmux)
bash ./tasks.sh

exit 0
