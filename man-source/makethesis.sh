#!/bin/bash

echo '************* pdflatex THESIS.tex ********************'
pdflatex man-thesisby.tex

echo '************* pybtex THESIS.aux ********************'
pybtex man-thesisby.aux

echo '************* pdflatex THESIS.tex ********************'
pdflatex man-thesisby.tex

echo '************* pdflatex THESIS.tex ********************'
pdflatex man-thesisby.tex
