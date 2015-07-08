#!/bin/bash
msg=$({ echo "status"; sleep 0.1; echo "currentsong"; sleep 0.1; echo "close"; } | curl --connect-timeout 1 -fsm 1 telnet://127.0.0.1:6600)

state=$(echo "${msg}" | sed -n 's/state: //p')
artist=$(echo "${msg}" | sed -n 's/^Artist: //p')
title=$(echo "${msg}" | sed -n 's/Title: //p')

if [[ ${state} = "play" ]]; then
    echo "♫ ${artist} : ${title}"
elif [[ ${state} = "pause" ]]; then
    echo "♫ ${artist} : ${title} (paused)"
else
    echo "♫ stop"
fi
