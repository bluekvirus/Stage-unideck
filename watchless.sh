#!/bin/bash
inotifywait -q -m -e close_write ./less/* |
while read -r filename event; do
  lessc ./less/stage-unideck.less ./main.css         # or "./$filename"
done
