#!/bin/bash

feh --bg-fill $(shuf -e -n1 ~/Pictures/wallpapers/*)

cd ~/scripts/startup/
# Configure right monitor layout
bash ./workspace_6.sh
# Start background tasks (tmux)
bash ./tasks.sh

exit 0
