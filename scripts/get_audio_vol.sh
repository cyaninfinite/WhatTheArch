#!/bin/bash

#A_VOL=$(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Speaker))
A_VOL=`amixer sget Speaker | awk -F"[][]" '/Left:/ { print $2 }'`
notify-send "Volume: $A_VOL" -i /usr/share/icons/Papirus-Dark/48x48/status/notification-audio-volume-medium.svg
