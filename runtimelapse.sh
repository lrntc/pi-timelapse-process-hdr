#!/bin/bash
# Timelapse controller for the Raspberry Pi camera module

DIR=timelapse

x=1
while [ $x -le 1440 ]; do

filename=$x.jpg

raspistill --raw -w 640 -h 480 -o $DIR/$filename

x=$(( $x + 1 ))

sleep 10;

done;