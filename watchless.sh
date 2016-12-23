#!/bin/bash
#
# Note: You will need to install inotifywait (apt) and less (npm)
#
# @author Patrick Zhu, Tim Lauv
# @created 2016.12.18

COMPILE_CMD="lessc --verbose ./less/main.less ./stage-unideck.css"

#1. Refresh main.css
eval $COMPILE_CMD

#2. Keep watching
inotifywait -q -m -e close_write ./less/* |
while read -r filename event; do
  eval $COMPILE_CMD
done