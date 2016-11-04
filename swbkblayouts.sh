#!/bin/bash
# Switch between 'us' and 'ir' keyboard layouts

kb=`setxkbmap -print | awk -F"+" '/xkb_symbols/ {print $2}'`
if [ "$kb" == "us" ] ; then
	setxkbmap -layout ir;
else
	setxkbmap -layout us;
fi
