#!/bin/bash
# Timelapse controller for the Raspberry Pi camera module

DIR=timelapse

x=1
total=100

while [ $x -le $total ]; do

echo Frame $x of $total

filename=$x.jpg

raspistill --raw -w 2592 -h 1944 -o $DIR/$filename -contrast 25 -q 95

x=$(( $x + 1 ))

sleep 10;

done;