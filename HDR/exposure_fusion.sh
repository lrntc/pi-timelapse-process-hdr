#!/bin/bash

x=0;

filelist=`ls | grep '.jpg'`

for image_file in $filelist
do
  enfuse --output=exp_fusion/hdr_$x.jpg minus10_$x.jpg zero_$x.jpg plus10_$x.jpg

x=$(( $x + 1 ))

done
