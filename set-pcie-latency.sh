#!/bin/sh

set -eu

# set PCI-e latencies except for sound cards
# For more information visit: https://wiki.archlinux.org/title/Gaming#Improve_PCI_Express_Latencies
setpci -v -s '*:*' latency_timer=20
setpci -v -s '0:0' latency_timer=0
setpci -v -d "*:*:04xx" latency_timer=80
