MONITOR_MAIN="eDP-1"
MONITOR_EXT="HDMI-1"
TARGET_RES="1920x1080"

# Set Resolution
xrandr --output $MONITOR_MAIN --mode $TARGET_RES

if xrandr | grep -q '$MONITOR_EXT connected' ; then
    xrandr --output $MONITOR_EXT --auto --right-of $MONITOR_MAIN
fi
