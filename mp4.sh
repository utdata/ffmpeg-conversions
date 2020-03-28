#!/bin/bash

for file in 01_in/*.mov
do
ffmpeg -i "$file" -vcodec h264 "${file%.*}".mp4
done
mv 01_in/*.m* 02_out