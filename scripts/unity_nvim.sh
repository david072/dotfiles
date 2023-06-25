#!/bin/bash

i3-msg "workspace 2"
alacritty --hold -e nvr --servername "/tmp/unity_nvim" --remote-tab-silent "$@"
exit 0
