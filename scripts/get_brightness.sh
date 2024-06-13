#!/bin/bash

BL=$(brightnessctl | grep Current | awk '{print substr($4, 2, length($4)-2)}')
notify-send "Brightness: $BL" -i /usr/share/icons/Papirus-Dark/48x48/status/notification-display-brightness-medium.svg
