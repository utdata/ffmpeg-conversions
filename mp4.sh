#!/bin/bash

# convert mov to mp4
for file in ~/Documents/scripts/ffmpeg-conversions/01_in/*.mov
do
ffmpeg -i "$file" -vcodec h264 "${file%.*}".mp4
done

# move files to done
mv ~/Documents/scripts/ffmpeg-conversions/01_in/*.* ~/Documents/scripts/ffmpeg-conversions/02_out