#!/bin/bash

# 1. Define your wallpaper directory
WALLPAPER_DIR="/home/will/Wallpapers"


# 2. Find a random image from the folder
RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# 3. Define the list of available transitions in awww
TRANSITIONS=("simple" "center" "outer" "left" "right" "top" "bottom" "wipe" "grow")

# 4. Select a transition at random
RANDOM_TRANSITION=${TRANSITIONS[$RANDOM % ${#TRANSITIONS[@]}]}

# 5. Apply the wallpaper using awww
if [ -n "$RANDOM_WALLPAPER" ]; then
    awww img "$RANDOM_WALLPAPER" --transition-type "$RANDOM_TRANSITION"
    wal -i "$RANDOM_WALLPAPER"
else
    echo "No wallpapers found in $WALLPAPER_DIR"
fi

