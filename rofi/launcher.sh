#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x


theme="launcher"

dir="$HOME/.config/rofi/"

 #dark
#ALPHA="#00000000"
#BG="#000000ff"
#FG="#FFFFFFff"
#SELECT="#101010ff"

# light
ALPHA="#00000000"
BG="#3B4253"
FG="#BF616A"
SELECT="#343a46"
ACCENT="#3B4252"
# accent colors
#COLORS=('#EC7875' '#61C766' '#FDD835' '#42A5F5' '#BA68C8' '#4DD0E1' '#00B19F' \
#		'#FBC02D' '#E57C46' '#AC8476' '#6D8895' '#EC407A' '#B9C244' '#6C77BB')
#ACCENT="${COLORS[$(( $RANDOM % 14 ))]}ff"

# overwrite colors file
cat > $dir/colors.rasi <<- EOF
	/* colors */

	* {
	  al:  $ALPHA;
	  bg:  $BG;
	  se:  $SELECT;
	  fg:  $FG;
	  ac:  $ACCENT;
	}
EOF


rofi -no-lazy-grab -show drun -modi drun -theme $dir/"$theme"
