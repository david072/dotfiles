#!/bin/bash

i3-msg 'workspace 10; append_layout /home/david/.config/i3/workspace-10.json; workspace 2'
i3-msg 'exec /var/lib/flatpak/exports/bin/com.spotify.Client'
i3-msg 'exec /var/lib/flatpak/exports/bin/com.discordapp.Discord'
i3-msg 'workspace 2'

exit 0
