#!/bin/bash
# shell script to prepend i3status with ncmpcpp song and artist
i3status -c ~/.i3/i3status.conf | (read line && echo $line && read line && echo $line && while :
do
    read line
    song=$(~/.i3/mpd.sh)
    song="[{ \"full_text\": \"${song}\"},"
    ethspeed=$(~/.i3/ethspeed.sh)
    ethspeed="{ \"full_text\": \"${ethspeed}\"},"
    echo "${line/[/$song $ethspeed}" || exit 1
done)
