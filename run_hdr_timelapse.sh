#!/bin/bash
# HDR controller for the Raspberry Pi camera module

DIR=HDR

x=1
total=100

while [ $x -le $total ]; do

filename=$x.jpg

raspistill -w 1920 -h 1080 -o $DIR/minus10_$filename -ev -10
raspistill -w 1920 -h 1080 -o $DIR/zero_$filename -ev 0
raspistill -w 1920 -h 1080 -o $DIR/plus10_$filename -ev +10

x=$(( $x + 1 ))

sleep 10;

done;
