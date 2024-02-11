#!/bin/sh
tectonic résumé.tex --keep-intermediates
xdg-open résumé.pdf
cp résumé.pdf ~/.local/repos/site/static/assets/résumé.pdf
