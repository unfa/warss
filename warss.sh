#!/bin/bash
# Wrapper script for ARSS (WARSS). Created by unfa 2021. Licensed under GNU GPL 3 or later.

# usage:
#
#     ./warss.sh image.png
#
# Will convert image.png to image.png.wav
#
# Use `arss --help` for detaisl about the commanline parameters. Alter this script to customize the results, or copy the commands and run them manually.

convert "$1" -type truecolor "$1.bmp" # ARSS will only accept this kind of image file

./arss "$1.bmp" "$1.wav" --sample-rate 48000 --format-param 32 --sine --min-freq 150 --max-freq 20000 --pps 1000 -l --bmsq-lut-size 1024

rm "$1.bmp" # remove the temp file
