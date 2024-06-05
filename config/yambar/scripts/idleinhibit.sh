#!/bin/bash

# River swayidle toggle
function toggle {
if pgrep "swayidle" > /dev/null
then
	pkill swayidle
	notify-send -r 5556 -u normal "  Swayidle Inactive"
else
	swayidle -w \
		timeout 300 "waylock.sh" \
		timeout 600 "wlopm --off '*'" resume "wlopm --on '*'" &
fi
}

case $1 in
	toggle)
		toggle
		;;
	*)
		while true; do
		if pgrep "swayidle" > /dev/null
		then
			icon=""
		else
			icon=""
		fi
		echo "idleinhibit|string|$icon"
		echo ""
		sleep 1
	        done
		;;
esac
exit 0

