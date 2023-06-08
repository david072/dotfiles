#!/bin/bash

i3-msg 'workspace 6; layout splitv; exec /var/lib/flatpak/exports/bin/com.discordapp.Discord'
sleep 5s
i3-msg 'move up'

exit 0
