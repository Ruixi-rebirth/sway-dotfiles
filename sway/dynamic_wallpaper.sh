#!/bin/sh
isServerExist=`ps -ef|grep -m 1 swaybg|grep -v "grep"|wc -l`
if [ "$isServerExist" = "0" ]; then
	echo "my_server not found"
elif [ "$isServerExist" = "1" ]; then
  killall swaybg
fi

swaybg -i $(find ~/.config/sway/Background/. -type f | shuf -n1) -m fill &
OLD_PID=$!
while true; do
    sleep 1
    swaybg -i $(find ~/.config/sway/Background/. -type f | shuf -n1) -m fill &
    NEXT_PID=$!
    sleep 1
    kill $OLD_PID
    OLD_PID=$NEXT_PID
done
