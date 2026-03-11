#!/bin/zsh

PICTURE="${HOME}/Pictures/screenshots/Screenshot-$(date +%F_%T).png"

# grim -g "$(slurp -w 0)" - | wl-copy && wl-paste >"${PICTURE}"
grimblast --freeze copysave area ${PICTURE}

if [[ -s "${PICTURE}" ]]; then
  notify-send "Screenshot of the region taken" -t 2500 # screenshot of a region
else
  notify-send "Region not found; Screenshot has not taken" -t 2500 # region not found
  rm -f "${PICTURE}"
fi
