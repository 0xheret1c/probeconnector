#!/bin/sh
DEVICE=$(printenv 'MONITOR_DEVICE') # Get the device from the enviorment.
chnl=0
while true; do
        sleep $1
        echo "Hopping to channel $chnl"
        iwconfig $DEVICE channel $(( ($chnl % 14) + 1))
        ((chnl++))
done