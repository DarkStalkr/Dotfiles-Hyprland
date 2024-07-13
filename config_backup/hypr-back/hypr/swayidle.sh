#!/bin/bash

LOGFILE=~/swayidle.log

echo "Script started at $(date)" >> $LOGFILE

swayidle -w \
  timeout 600 'brightnessctl set 10%; echo "Dim to 10% at $(date)" >> $LOGFILE' \
  timeout 900 'brightnessctl set 5%; echo "Dim to 5% at $(date)" >> $LOGFILE' \
  timeout 1200 'hyprctl dispatch dpms off; echo "DPMS off at $(date)" >> $LOGFILE' \
  resume 'hyprctl dispatch dpms on && brightnessctl set 100%; echo "DPMS on and brightness 100% at $(date)" >> $LOGFILE' \
  before-sleep 'swaylock -f -c 000000; echo "System going to sleep at $(date)" >> $LOGFILE'

