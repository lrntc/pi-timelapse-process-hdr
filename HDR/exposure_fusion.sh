#!/bin/bash
# max resolution on a 256mb RAM RasPi is 1920x1080

x=1;

filelist=`ls | grep '.jpg'`

for image_file in $filelist;
do
  echo Processing no. $x
  enfuse --output=exp_fusion/hdr_$x.jpg minus10_$x.jpg zero_$x.jpg plus10_$x.jpg

x=$(( $x + 1 ))

sleep 10;

done;
