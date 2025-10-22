#!/bin/bash

# Build once and open the PDF
tectonic NathanPaul_Resume.tex --keep-intermediates && open NathanPaul_Resume.pdf &

# Watch for changes and rebuild automatically
fswatch -o NathanPaul_Resume.tex | while read f; do
  echo "Detected change in NathanPaul_Resume.tex — rebuilding..."
  tectonic NathanPaul_Resume.tex --keep-intermediates
done
