#!/bin/sh

DIR="$HOME/Képek/Screenshots"
# mkdir -p "$DIR"
# no

DATE="$(date +'%Y%m%d_%H%M%S')"
FILE="Screenshot_${DATE}.png"

# hyprpicker -r -n -z &
grim -g "$(slurp)" - | tee "$DIR/$FILE" | wl-copy

# hyprpicker -r -n -z &
hyprpicker_pid=$!
kill "$hyprpicker_pid"
