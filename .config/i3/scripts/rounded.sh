#!/bin/bash

# Get the ID of the new window
wid=$(xdotool getactivewindow)

# Apply rounded corners using xwinwrap
xwinwrap -ni -o 0.5 -fs -s -st -sp -b -nf -- mplayer -wid $wid -quiet -fs
