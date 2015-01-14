#!/bin/bash
# HDR controller for the Raspberry Pi camera module

DIR=HDR

x=1
while [ $x -le 3 ]; do

filename=$x.jpg

raspistill --raw -w 2592 -h 1944 -o $DIR/minus10_$filename -ev -10
raspistill --raw -w 2592 -h 1944 -o $DIR/zero_$filename -ev 0
raspistill --raw -w 2592 -h 1944 -o $DIR/plus10_$filename -ev +10

x=$(( $x + 1 ))


done;