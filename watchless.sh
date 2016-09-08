#!/bin/bash
inotifywait -q -m -e close_write ./less/* |
while read -r filename event; do
  lessc --verbose ./less/stage-unideck.less ./main.css
done
