#!/bin/bash

feh --bg-fill ~/Pictures/wallpaper.jpg

cd ~/scripts/startup/
# Configure right monitor layout
bash ./workspace_6.sh
# Start background tasks (tmux)
bash ./tasks.sh

exit 0
