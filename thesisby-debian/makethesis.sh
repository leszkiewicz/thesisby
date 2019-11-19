#!/bin/bash

echo '************* pdflatex THESIS.tex ********************'
pdflatex THESIS.tex

echo '************* pybtex THESIS.aux ********************'
pybtex THESIS.aux

echo '************* pdflatex THESIS.tex ********************'
pdflatex THESIS.tex

echo '************* pdflatex THESIS.tex ********************'
pdflatex THESIS.tex
