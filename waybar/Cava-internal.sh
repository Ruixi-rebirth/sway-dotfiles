#! /bin/bash
is_cava_ServerExist=`ps -ef|grep -m 1 cava|grep -v "grep"|wc -l`
if [ "$is_cava_ServerExist" = "0" ]; then
	echo "cava_server not found" > /dev/null 2>&1
#	exit;
elif [ "$is_cava_ServerExist" = "1" ]; then
  killall cava
fi

bar="▁▂▃▄▅▆▇█"
dict="s/;//g;"

# creating "dictionary" to replace char with bar
i=0
while [ $i -lt ${#bar} ]
do
    dict="${dict}s/$i/${bar:$i:1}/g;"
    i=$((i=i+1))
done

# make sure to clean pipe
pipe="/tmp/cava.fifo"
if [ -p $pipe ]; then
    unlink $pipe
fi
mkfifo $pipe

# write cava config
config_file="/tmp/waybar_cava_config"
echo "
[general]
bars = 12
[output]
method = raw
raw_target = $pipe
data_format = ascii
ascii_max_range = 7
" > $config_file

# run cava in the background
cava -p $config_file &

# reading data from fifo
while read -r cmd; do
    echo $cmd | sed $dict
done < $pipe
