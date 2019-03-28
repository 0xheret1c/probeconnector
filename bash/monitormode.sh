#!/bin/sh
DEVICE="wlp1s0"

#Turn monitor-mode for DEVICE on.
on() {
	echo "Switching monitor-mode for $DEVICE on."
	echo "Taking $DEVICE down."
	ifconfig $DEVICE down
	echo "Setting $DEVICE to monitor-mode."
	iwconfig $DEVICE mode monitor
	echo "Taking $DEVICE up."
	ifconfig $DEVICE up
}

#Turn monitor-mode for DEVICE off.
off() {
	echo "Switching monitor-mode for $DEVICE off."
	echo "Taking $DEVICE down."
	ifconfig $DEVICE down
	echo "Setting $DEVICE to managed-mode."
	iwconfig $DEVICE mode managed
	echo "Taking $DEVICE up."
	ifconfig $DEVICE up
}

if [ "$1" = "on" ]
then
	on
else
	off
fi

