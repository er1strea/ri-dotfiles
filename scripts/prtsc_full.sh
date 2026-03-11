#!/bin/zsh

grim - | wl-copy && wl-paste >/home/solvr/Pictures/screenshots/Screenshot-$(date +%F_%T).png | dunstify "Screenshot of the screen taken" -t 1500 # screenshot of a region
