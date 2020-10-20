#!/bin/bash
is_on="`xrandr | grep -A 1 'DVI-I-1' | tail -1 | sed 's/[^\*]//g';`";
echo "$is_on";
if [ "$is_on" ]
then
	xrandr --output DVI-I-1 --off
else
	xrandr --output DVI-I-1 --auto --left-of HDMI-0 
fi
