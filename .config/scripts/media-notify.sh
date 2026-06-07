#!/bin/bash

# Give the media player a split-second to synchronize metadata
sleep 0.5

# 1. Fetch current status and metadata safely
STATUS=$(playerctl status 2>/dev/null)
TITLE=$(playerctl metadata title 2>/dev/null)
ARTIST=$(playerctl metadata artist 2>/dev/null)

# Exit immediately if no player is active or music is paused
if [ "$STATUS" != "Playing" ] || [ -z "$TITLE" ]; then
    exit 0
fi

# Fallback string if artist metadata is blank
[ -z "$ARTIST" ] && ARTIST="Unknown Artist"

# 2. Extract album art location pointer
RAW_ART=$(playerctl metadata mpris:artUrl 2>/dev/null)
TARGET_ART=""

# Create a safe, temporary space for streaming art caches
TMP_DIR="/tmp/mako-audio-art"
mkdir -p "$TMP_DIR"

# Housekeeping: Clear downloaded art files older than 4 hours to keep /tmp tiny
find "$TMP_DIR" -type f -mmin +240 -delete 2>/dev/null

# 3. Process Art Location: Local File vs. Remote URL
if [ -n "$RAW_ART" ]; then
    if [[ "$RAW_ART" == file://* ]]; then
        # LOCAL: Strip the "file://" prefix, use your existing hard drive path instantly
        TARGET_ART="${RAW_ART#file://}"
    elif [[ "$RAW_ART" == http://* || "$RAW_ART" == https://* ]]; then
        # STREAMING: Hash the long URL to make a unique, legal Linux filename
        URL_HASH=$(echo -n "$RAW_ART" | md5sum | cut -d' ' -f1)
        FILE_EXT="${RAW_ART##*.}"
        
        # Safe fallback extension if URL parsing gets messy
        if [[ "$FILE_EXT" == "$RAW_ART" || ${#FILE_EXT} -gt 4 ]]; then
            FILE_EXT="jpg"
        fi
        
        TARGET_ART="$TMP_DIR/$URL_HASH.$FILE_EXT"
        
        # Download the cover quietly ONLY if we haven't already cached it
        if [ ! -f "$TARGET_ART" ]; then
            curl -s "$RAW_ART" -o "$TARGET_ART"
        fi
    fi
fi

# 4. Dispatch the finished notification packet directly to Mako
# Note: the "music" hint ensures the window updates in-place instead of stacking bubbles
if [ -n "$TARGET_ART" ] && [ -f "$TARGET_ART" ]; then
    notify-send -a "media-notifier" -i "$TARGET_ART" --hint=string:x-canonical-private-synchronous:music "Now Playing" "$TITLE\n<i>by $ARTIST</i>"
else
    # System fallback icon if no artwork was found or provided
    notify-send -a "media-notifier" -i audio-x-generic --hint=string:x-canonical-private-synchronous:music "Now Playing" "$TITLE\n<i>by $ARTIST</i>"
fi
