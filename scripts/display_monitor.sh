MONITOR_MAIN="eDP-1"
MONITOR_EXT="HDMI-1"
TARGET_RES="1920x1080"

# Set Resolution
xrandr --output $MONITOR_MAIN --mode $TARGET_RES

check=$(xrandr | grep "$MONITOR_EXT connected" | wc -l)
notify-send "[Debug] $MONITOR_EXT Connected: $check"
if [ $check -eq 1 ] ; then
	notify-send "External display detected!"
    xrandr --output $MONITOR_EXT --auto --right-of $MONITOR_MAIN
else
	xrandr --output $MONITOR_EXT --off
	notify-send "External display not connected!"
fi
