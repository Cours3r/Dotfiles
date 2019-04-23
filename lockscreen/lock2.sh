#!/usr/bin/env bash

icon="$HOME/.config/locker/icon.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
#i3lock -u -e -i "$tmpbg"
i3lock --insidecolor=ffffff10 --ringcolor=ffffff3e --linecolor=ffffff00 --keyhlcolor=00000080 --ringvercolor=00000000 --separatorcolor=22222260 --insidevercolor=0000001c --ringwrongcolor=00000055 --insidewrongcolor=0000001c -i "$tmpbg"

