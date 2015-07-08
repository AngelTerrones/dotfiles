#!/bin/bash
#IMAGE=/home/angelterrones/Pictures/Wallpapers/zf1f7OZ.png
IMAGE=/tmp/screen_locked.png
scrot $IMAGE
convert $IMAGE -blur 2x2 $IMAGE
i3lock -i $IMAGE -t
