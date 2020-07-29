#!/bin/bash

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar ypsilon &
polybar -c ~/.config/polybar/config.second bottom &
echo "Polybar launched..."
