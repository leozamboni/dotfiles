#!/usr/bin/env zsh

while true; do
		xsetroot -name "$(printf "💾 total: %s, used %s of %s | 💿 %s" ${$(free -h -t | sed 1,3d):1} $(df -h /home --output=pcent | sed 1d)) | 📅 $(date '+%H:%M:%S %A %B %d/%m/%y')"
		sleep 1s
done &
