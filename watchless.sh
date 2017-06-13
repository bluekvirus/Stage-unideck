#!/bin/bash
#
# Note: You will need to install inotifywait/inotify-tools (apt) and less (npm)
#
# @author Patrick Zhu, Tim Lauv
# @created 2016.12.18

COMPILE_CMD="lessc --include-path=./:./bower_components --verbose ./less/main.less ./css/stage-unideck.css"

#1. Refresh main.css
eval $COMPILE_CMD

#2. Keep watching
# Caveat: You will have to watch on dev host instead of in guest dev vm, events won't be forwarded if changes happen from host filesystem.
#         (e.g folder mapped into guest dev vm but edit using text editor on host.)
while inotifywait -q -r -e close_write ./less/*; do
	eval $COMPILE_CMD
done