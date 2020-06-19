#!/bin/bash

xrandr --output eDP-1 --off

xrandr --newmode "2560x1440_58.00"  300.00  2560 2744 3016 3472  1440 1443 1448 1491 -hsync +vsync

xrandr --addmode HDMI-2 2560x1440_58.00

xrandr --output HDMI-2 --mode 2560x1440_58.00
