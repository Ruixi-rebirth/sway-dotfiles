#!/bin/bash
killall waybar
SDIR="$HOME/.config/waybar"
for i in /sys/class/hwmon/hwmon*/temp*_input; do 
    if [ "$(<$(dirname $i)/name): $(cat ${i%_*}_label 2>/dev/null || echo $(basename ${i%_*}))" = "coretemp: Core 0" ]; then
        export HWMON_PATH="$i"
    fi
done
sed -i "/hwmon-path/c\"hwmon-path\": \"$HWMON_PATH\"," ~/.config/waybar/config1 && sed -i "/hwmon-path/c\"hwmon-path\": \"$HWMON_PATH\"," ~/.config/waybar/config2

#waybar -c "$SDIR"/config1 -s "$SDIR"/style1.css &
waybar -c "$SDIR"/config2 -s "$SDIR"/style2.css &
