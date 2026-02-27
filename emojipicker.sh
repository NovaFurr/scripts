#!/bin/env bash
set -euo pipefail

LIST="/src/nova/emojis.txt"


# Pick a line via fuzzel (dmenu mode)
choice="$(fuzzel --dmenu --prompt='emoji> ' < "$LIST" || true)"
[ -z "${choice}" ] && exit 0

# Extract the first “word” (the emoji itself)
emoji="${choice%% *}"

# Copy to clipboard (Wayland)
printf '%s' "$emoji" | wl-copy

# Optional: also type it into the focused window (uncomment one)
# wtype -- "$emoji"
# ydotool type "$emoji"   # (if you use ydotool instead of wtype)

# Optional: small confirmation notification
notify-send "Emoji copied" "$emoji"

