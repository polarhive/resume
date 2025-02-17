#!/bin/sh
tectonic résumé.tex --keep-intermediates && xdg-open résumé.pdf &
inotifywait -m -e modify résumé.tex | while read -r filename event; do
  tectonic résumé.tex --keep-intermediates
done
