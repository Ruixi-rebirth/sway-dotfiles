#!/bin/sh

isServerExist=`ps -ef|grep -m 1 swaybg|grep -v "grep"|wc -l`
if [ "$isServerExist" = "0" ]; then
	echo "my_server not found"
#	exit;
elif [ "$isServerExist" = "1" ]; then
  killall swaybg
fi

swaybg -i $(find ~/.config/sway/Background/. -type f | shuf -n1) -m fill &

