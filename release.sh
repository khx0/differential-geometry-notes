#!/bin/bash
##########################################################################################
# author: Nikolas Schnellbaecher
# contact: khx0@posteo.net
# file: release.sh
# date: 2018-09-07
# build and release local TeX document from source with timestamp
##########################################################################################

# tex document
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

