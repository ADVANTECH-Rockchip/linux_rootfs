#!/bin/bash

echo "$0 is a helper script for udev rfkill events handling."

logging () {
	echo "[$(date +%T)]: $@" |tee -a ${LOG_FILE:-/tmp/rfkill_events.log}
}

logging "Event received: $RFKILL_NAME($RFKILL_TYPE) state changed to $RFKILL_STATE"

RFKILL_NAME_BLACKLIST="hci[0-9]+|wlan[0-9]+"
RFKILL_NAME=$(echo $RFKILL_NAME|grep -wvE $RFKILL_NAME_BLACKLIST)
[ "$RFKILL_NAME" ] || exit 0

bt_power_changed () {
	logging "Handling bt power changed event"
	HCIATTACH=/usr/bin/rtk_hciattach
	HCIATTACH_OPTS="-n -s 115200 /dev/ttyS0 rtk_h5"
	[ -f "$HCIATTACH" ] || return

	SSD_OPTIONS="--oknodo --quiet --exec $HCIATTACH -- $HCIATTACH_OPTS"
	case $RFKILL_STATE in
		0)
			logging "Stopping $HCIATTACH"

			start-stop-daemon --stop $SSD_OPTIONS
			;;
		1)
			logging "Running $HCIATTACH $HCIATTACH_OPTS"
			echo "sleep 2;start-stop-daemon --start $SSD_OPTIONS" \
			       | at -M now
			;;
		*)
			logging "Unknown state: $RFKILL_STATE"
			;;
	esac
}

wlan_power_changed () {
	logging "Handling wlan power changed event"

	# Nothing to do for now
}

case $RFKILL_TYPE in
	bluetooth)
		bt_power_changed
		;;
	wlan)
		wlan_power_changed
		;;
	*)
		logging "Unhandled event"
		;;
esac

exit 0
