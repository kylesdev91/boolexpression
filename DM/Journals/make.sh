#!/bin/bash
set -eu
source=Pigenhole.tex
compiled=Pigenhole.pdf
target="$HOME/www/Digital Portfolio/DM/Journals/Chapter_2/$compiled"
pdflatex -halt-on-error  $source
cp "$compiled" "$target"
echo "Copying $compiled -> $target"
chmod a+r "$target"
echo "DONE: $source -> $compiled -> $target"
