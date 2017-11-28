
#!/bin/sh

# Terminate already running bar instances
#killall -q polybar

# Wait until the processes have been shut down
#while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
#DISPLAY1=$(xrandr -q | grep 'LVDS1\|VGA-1' | cut -d ' ' -f1)
#[ ! -z $DISPLAY1 ] & MONITOR=$DISPLAY1 polybar top1 & 
#echo "top1 " $DISPLAY1 &
#DISPLAY2=$(xrandr -q | grep 'HDMI1\|DVI-I-1' | cut -d ' ' -f1)
#[ ! -z $DISPLAY2 ] & MONITOR=$DISPLAY2 polybar top2 &
#echo "top2 " $DISPLAY2 & 
#echo "Bars launched..."



# this is the default launch script

#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

#DISPLAY= "$(xrandr -q | grep 'HDMI1\|DVI-I-1' | cut -d ' ' -f1)"
#[bar/main] && MONITOR= $DISPLAY  &
#echo "display " $DISPLAY & 

# Launch bar1 and bar2
polybar main & 
polybar secondary
echo "Bars launched..."
