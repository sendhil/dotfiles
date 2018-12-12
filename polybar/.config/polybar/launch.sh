#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m ETH_INTERFACE=$(ifconfig | head -1 | cut -d":" -f1) polybar --reload bar1 &
  done
else
  polybar --reload bar1 &
fi

# # Launch bar1 and bar2
# polybar bar1 &
# # polybar bottom;

echo "Bars launched..."