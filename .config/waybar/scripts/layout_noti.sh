#!/bin/zsh
language=$(/home/solvr/CMD/scripts/kblo.sh | tr a-z A-Z)

dunstify "Keyboard Layout: $language" -t 1200
