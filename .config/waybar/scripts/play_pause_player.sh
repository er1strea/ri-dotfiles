#!/bin/bash

if pgrep -x "spotify_player" >/dev/null; then
  PLAYER="spotify_player"
elif pgrep -x "spotify" >/dev/null; then
  PLAYER="spotify"
fi

playerctl -p $PLAYER play-pause
