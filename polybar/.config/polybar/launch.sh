#!/usr/bin/env sh

export POLYBAR_PATH="$HOME/.config/polybar"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
# MONITOR=$(polybar -m|tail -1|sed -e 's/:.*$//g') polybar top
# MONITOR=$(polybar -m|tail -1|sed -e 's/:.*$//g') polybar mainbar-i3
#polybar -c ~/.config/polybar/config main &
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload top &
  done
else
  polybar --reload top &
fi

echo "Bars launched..."
