#!/bin/bash
current_profile=$(powerprofilesctl get)

icon=""
case $current_profile in
"power-saver")
  icon="󰾆"
  ;;
"balanced")
  icon="󰾅"
  ;;
"performance")
  icon="󰓅"
  ;;
*)
  icon="❓"
  ;;
esac

echo "$icon"

case $current_profile in
"power-saver")
  powerprofilesctl set balanced
  ;;
"balanced")
  powerprofilesctl set performance
  ;;
"performance")
  powerprofilesctl set power-saver
  ;;
*)
  powerprofilesctl set balanced
  ;;
esac
