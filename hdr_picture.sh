#!/bin/bash
# HDR controller for the Raspberry Pi camera module

DIR=HDR

raspistill -w 1920 -h 1080 -o $DIR/minus10_%d.jpg -ev -10 --contrast 25 --ISO 100
raspistill -w 1920 -h 1080 -o $DIR/zero_%d.jpg -ev 0 --contrast 25 --ISO 100
raspistill -w 1920 -h 1080 -o $DIR/plus10_%d.jpg -ev +10 --contrast 25 --ISO 100
