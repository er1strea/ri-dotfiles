#!/bin/zsh

DND=$(dunstctl get-pause-level)

if (( $DND >= 60 )); then
  printf '{"text":"◐","class":"enabled"}'
else
  printf '{"text":"◐","class":"disabled"}'
fi
