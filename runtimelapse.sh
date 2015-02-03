#!/bin/bash
# Timelapse controller for the Raspberry Pi camera module

DIR=timelapse

raspistill -w 1920 -h 1080 -o $DIR/frame_%d.jpg -t 86400000 -tl 10000 --contrast 25 --ISO 100

