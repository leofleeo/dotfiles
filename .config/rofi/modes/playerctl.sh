#!/usr/bin/env bash

# Modified from https://github.com/mrHeavenli/rofi-playerctl

status_function () {
	if playerctl status > /dev/null; then
			echo "$(playerctl status -f "{{playerName}}"): $(playerctl metadata -f "{{trunc(default(title, \"[Unknown]\"), 25)}} by {{trunc(default(artist, \"[Unknown]\"), 25)}}") ($(playerctl status))"
	else
		echo "Nothing is playing"
	fi
}
status=$(status_function)

# Options
toggle="⏯️ Play/Pause"
next="⏭️ Next"
prev="⏮️ Previous"
seekminus="⏪ Go back 15 seconds"
seekplus="⏩ Go ahead 15 seconds"
volumeup="🔊 Increase volume"
volumedown="🔉 Decrease volume"
switch="🔄 Change selected player"

# Variable passed to rofi
options="$toggle\n$next\n$prev\n$seekplus\n$seekminus\n$volumeup\n$volumedown\n$switch"

chosen="$(echo -e "$options" | rofi -show -p "${status^}" -dmenu -selected-row 0)"
case $chosen in
    $toggle)
		playerctl play-pause
        ;;
    $next)
		playerctl next
        ;;
    $prev)
        playerctl previous
        ;;
    $seekminus)
		playerctl position 15-
        ;;
    $seekplus)
		playerctl position 15+
			  ;;
    $volumeup)
    playerctl volume 0.1+
    		;;
    $volumedown)
    playerctl volume 0.1-
    		;;
    $switch)
        playerctld shift
        ;;
esac
