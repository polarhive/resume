#!/bin/sh
xdg-open résumé.pdf &
inotifywait -m -e modify résumé.tex | while read -r filename event; do
    echo "Detected change in $filename. Running build script..."
    tectonic résumé.tex --keep-intermediates
done
cp résumé.pdf ~/.local/repos/site/static/assets/résumé.pdf