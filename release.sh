#!/bin/bash
# author: Nikolas Schnellbaecher
# contact: khx0@posteo.net
# compile local TeX files
# date: 2018-06-04
##########################################################################################

# tex sheet
pdflatex main.tex
bibtex main.aux
pdflatex main.tex
pdflatex main.tex
pdflatex main.tex

# clean up auxiliary files
rm *.aux *.log  *.out *.toc *.bbl *.blg *.xwm

outname="DifferentialGeometryPrimer_$(date +%Y-%m-%d).pdf"

echo $outname

mv main.pdf $outname

