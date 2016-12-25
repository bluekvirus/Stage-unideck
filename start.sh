#!/bin/bash
#
# Note: You will need to install forever (npm) and http-server (npm)
#
# @author Tim Lauv
# @created 2016.12.25

forever start --uid "stage-unideck" --append --workingDir . $(which http-server) "$@"
