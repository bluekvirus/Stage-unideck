#!/bin/bash
#
# Note: You will need to install fsevents-tools (brew) and less (npm)
#
# @author Tim Lauv
# @created 2016.12.25

COMPILE_CMD="lessc --verbose ./less/main.less ./stage-unideck.css"

#1. Refresh main.css
eval $COMPILE_CMD

#2. Keep watching
# Caveat: You will have to watch on dev host instead of in guest dev vm, events won't be forwarded if changes happen from host filesystem.
#         (e.g folder mapped into guest dev vm but edit using text editor on host.)
notifyloop ./less eval $COMPILE_CMD
