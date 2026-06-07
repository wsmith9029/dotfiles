#!/bin/bash

# Query playerctl for the active player name right now
PLAYER=$(playerctl metadata --format "{{ playerName }}" 2>/dev/null)

if [ -z "$PLAYER" ]; then
    exit 0
fi

hyprctl dispatch "hl.dsp.focus({ window = \"class:^(?i)${PLAYER}$\" })"


# Clean up the notification bubble
makoctl dismiss -a "media-notifier"
