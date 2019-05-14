#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
MONITOR=$(polybar -m|tail -1|sed -e 's/:.*$//g') polybar top
# MONITOR=$(polybar -m|tail -1|sed -e 's/:.*$//g') polybar mainbar-i3
#polybar -c ~/.config/polybar/config main &

echo "Bars launched..."
