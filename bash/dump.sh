#!/bin/sh
DUMP="../captures/"
DEVICE="wlp1s0"

tcpdump -i $DEVICE -w $DUMP"wireless.cap" -s 256 type mgt subtype probe-req


