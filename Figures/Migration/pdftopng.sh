#!/bin/bash

INPUT="$1"
OUTPUT=`echo $INPUT | sed 's|.pdf||'`

pdftoppm -r 600 $INPUT $OUTPUT -png
mv $OUTPUT"-1.png" $OUTPUT".png"
