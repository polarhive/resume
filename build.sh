#!/bin/sh
xdg-open résumé.pdf &
cp résumé.pdf ~/.local/repos/site/static/assets/résumé.pdf
inotifywait -m -e modify résumé.tex | while read -r filename event; do
  tectonic résumé.tex --keep-intermediates
done
