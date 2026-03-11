#!/bin/zsh

DND_STATE=$(dunstctl get-pause-level)

if (( $DND_STATE < 60 )); then
  dunstctl set-pause-level 60
  dunstify -t 2500 -u critical "Do not disturb: On"
elif (( $DND_STATE >= 60 )); then
  dunstify -t 2500 -u critical "Do not disturb: Off"
  sleep 2.5
  dunstctl set-pause-level 0
fi
