#!/bin/bash
is_mpvpaper_ServerExist=`ps -ef|grep -m 1 mpvpaper|grep -v "grep"|wc -l`
if [ "$is_mpvpaper_ServerExist" = "0" ]; then
	echo "mpvpaper_server not found" > /dev/null 2>&1
#	exit;
elif [ "$is_mpvpaper_ServerExist" = "1" ]; then
  killall mpvpaper
fi

is_swaybg_ServerExist=`ps -ef|grep -m 1 swaybg|grep -v "grep"|wc -l`
if [ "$is_swaybg_ServerExist" = "0" ]; then
	echo "swaybg_server not found" > /dev/null 2>&1
#	exit;
elif [ "$is_swaybg_ServerExist" = "1" ]; then
  killall swaybg
fi

env __NV_PRIME_RENDER_OFFLOAD=1 mpvpaper eDP-1 -o "--no-audio --loop" $(find ~/.config/sway/Live_Wallpaper/. -type f | shuf -n1) 
