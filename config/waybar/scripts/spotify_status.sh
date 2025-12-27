#!/bin/bash

if pgrep -x spotify > /dev/null; then
    echo "{\"text\":\"Spotify\",\"class\":\"online\"}"
else
    echo "{\"text\":\"404 NotFound\",\"class\":\"offline\"}"
fi
