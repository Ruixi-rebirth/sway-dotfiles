#!/bin/bash
killall waybar
SDIR="$HOME/.config/waybar"
waybar -c "$SDIR"/config2 -s "$SDIR"/style2.css &

