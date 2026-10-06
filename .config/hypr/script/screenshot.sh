#!/bin/bash

DIR="$HOME/Pictures/Screenshots"
mkdir -p "$DIR"

i = 0

i=$(find "$DIR" -maxdepth 1 -name 'screenshot_*.png' \
    -printf '%f\n' |
    sed -n 's/^screenshot_\([0-9]\+\)\.png$/\1/p' |
    sort -n |
    tail -1
)

if [ -z "$i" ]; then
    i=0
else
    ((i++))
fi

FILE="$DIR/screenshot_$i.png"

wayfreeze & sleep 0.05;

grim -g "$(slurp \
    -b c26d3f66 \
    -B 0 \
    -w 0)" "$FILE"

status=$?

pkill wayfreeze

if [ $status -eq 0 ]; then
    notify-send "Screenshot" "Saved to $FILE"
fi
