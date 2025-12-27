#!/bin/bash

MAX=5

CURRENT=$(hyprctl activeworkspace -j | jq '.id')

NEXT=$((CURRENT + 1))

if [ "$NEXT" -gt "$MAX" ]; then
  NEXT=1
fi

hyprctl dispatch workspace "$NEXT"
