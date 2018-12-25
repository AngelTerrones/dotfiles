#!/bin/bash
IMAGE=/tmp/screen_locked.png
scrot $IMAGE
convert $IMAGE -blur 8x8 $IMAGE
i3lock -i $IMAGE -t
