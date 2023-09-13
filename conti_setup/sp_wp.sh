#!/bin/bash

SYS_DONE=0
WP_DONE=0

while [ $# -gt 0 ] ; do
	case $1 in
		--sys | -s)	SYSTEM=$2
					SYS_DONE=1
					shift ;;
		--wp | -w)	WAYPOINT=$2
					WP_DONE=1
					shift ;;
	esac
	shift
done

if [[ "$SYS_DONE" == 0 || "$WP_DONE" == 0 ]]; then
	printf "Error with args:\n\tsystem: %s\n\twaypoint: %s\n" "$SYSTEM" "$WAYPOINT"
	echo $ARG_CHECK
	exit 1
fi

curl https://api.spacetraders.io/v2/systems/$SYSTEM/waypoints/$WAYPOINT
