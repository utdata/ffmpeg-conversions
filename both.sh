#!/bin/bash

# convert mov to mp4
for file in ~/Documents/scripts/ffmpeg-conversions/01_in/*.mov
do
ffmpeg -i "$file" -vcodec h264 "${file%.*}".mp4
done

# Convert mov to gif raw
for file in ~/Documents/scripts/ffmpeg-conversions/01_in/*.mov
do
ffmpeg -i "$file" -pix_fmt rgb8 -r 10 "${file%.*}".gif
done

# optimize the gif with gifsicle
# for file in ~/Documents/scripts/ffmpeg-conversions/01_in/*.gif
# do
# gifsicle -i "$file" --optimize=3 -o "${file%.*}-opt".gif
# done

# move all files to done
mv ~/Documents/scripts/ffmpeg-conversions/01_in/* ~/Documents/scripts/ffmpeg-conversions/02_out
