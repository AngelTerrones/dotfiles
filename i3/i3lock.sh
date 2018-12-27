#!/bin/bash
IMAGE=/tmp/screen_locked.png
scrot $IMAGE
convert $IMAGE -blur 2x2 $IMAGE
i3lock -i $IMAGE -t
