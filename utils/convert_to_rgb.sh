#!/bin/bash

# User configurable Variables:
RESULT_COLORSPACE="RGB"
TYPE="truecolor"
PNG_COLOR_TYPE="2"
START_EXTENSION="png"

for file in *.$START_EXTENSION
do
    mogrify $file -colorspace $RESULT_COLORSPACE -type $TYPE -define png:color-type=$PNG_COLOR_TYPE
done
