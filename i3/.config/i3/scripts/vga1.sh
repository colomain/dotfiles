#!/bin/sh


VGA="VGA1"
unamestr=`uname -n`
if [[ "$unamestr" == 'solus-e540' ]]; then
	VGA="VGA-1-1"
fi

cvt -r 1920 1080
xrandr --newmode "1920x1080R"  138.50  1920 1968 2000 2080  1080 1083 1088 1111 +hsync -vsync
xrandr --addmode $VGA 1920x1080R
xrandr --output $VGA --mode 1920x1080R --dpi 96
