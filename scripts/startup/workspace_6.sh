#!/bin/bash

sleep 1s
i3-msg 'workspace 6; layout splitv; exec /var/lib/flatpak/exports/bin/com.discordapp.Discord'
sleep 5s
i3-msg 'workspace 6; layout splitv; exec /var/lib/flatpak/exports/bin/com.spotify.Client'

exit 0
