#!/bin/bash

# Start OneDrive monitor service
tmux new -s bg-tasks -d "onedrive -m"
tmux set-option -t bg-tasks remain-on-exit on
# Hide mouse when not moved
tmux new-window -t bg-tasks:1 "unclutter"

exit 0
