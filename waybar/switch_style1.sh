#!/bin/bash
killall waybar
SDIR="$HOME/.config/waybar"
waybar -c "$SDIR"/config1 -s "$SDIR"/style1.css &
swaymsg gaps outer all set 0 && swaymsg gaps inner all set 0

