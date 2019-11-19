#!/bin/bash

echo '************* sed-ie mybibliography thebibliography to thebibliography from mybib.tex to abstractmybib_readonly.tex ********************'
cp mybib.tex abstractmybib_readonly.tex
sed -i -e 's/mybibliography/myabstractbibliography/g' abstractmybib_readonly.tex
sed -i -e 's/section\*{Список публикаций соискателя}/\begin{center}{\\textbf{СПИСОК ПУБЛИКАЦИЙ СОИСКАТЕЛЯ}}\\end{center}/g' abstractmybib_readonly.tex

echo '************* characteristic name change ********************'
cp characteristics.tex abstractcharacteristics_readonly.tex
sed -i -e 's/{ОБЩАЯ ХАРАКТЕРИСТИКА РАБОТЫ}/{\\normalsize ОБЩАЯ ХАРАКТЕРИСТИКА РАБОТЫ}/g' abstractcharacteristics_readonly.tex


echo '************* conclusions name change ********************'
cp conclusions.tex abstractconclusions_readonly.tex
sed -i -e 's/{ЗАКЛЮЧЕНИЕ}/{\\normalsize ЗАКЛЮЧЕНИЕ}/g' abstractconclusions_readonly.tex
echo "\vspace{-17pt} \begin{flushright} \includegraphics[angle=0,width=40mm]{000mypodpis} \end{flushright}" >> abstractconclusions_readonly.tex

echo '************* pdflatex ABSTRACT.tex ********************'
pdflatex ABSTRACT.tex

echo '************* pybtex ABSTRACT.aux ********************'
pybtex ABSTRACT.aux

echo '************* pdflatex ABSTRACT.tex ********************'
pdflatex ABSTRACT.tex

echo '************* pdflatex ABSTRACT.tex ********************'
pdflatex ABSTRACT.tex


echo '************* convert ABSTRACT A4 to A5 page size ********************'
pdfjam --outfile ABSTRACT_A5.pdf --paper a5paper ABSTRACT.pdf
