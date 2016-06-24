#/bin/bash

Genera(){
  ## --use-part-section
  nombreArchivo=$1
  idioma=es
  generadoPor='/^Generated by \\href{/d'
  tipoDocumento=article
  tamPapel=letterpaper
  tamLetra=11pt
  opcionesDoc=$tamPapel,$tamLetra
  rst2xetex --template=latex2e/xelatex.tex --documentclass=$tipoDocumento --documentoptions=$opcionesDoc --use-latex-docinfo --use-latex-citations --figure-citations --section-subtitles --smart-quotes=yes -l -r 3 --compound-enumerators --section-numbering $idioma $nombreArchivo.rst $nombreArchivo.tex
  sed -i $generadoPor  $nombreArchivo.tex
  #sed -i 's/\\begin{quote}/\\begin{quotation}/g' $nombreArchivo.tex
  #sed -i 's/\\end{quote}/\\end{quotation}/g' $nombreArchivo.tex

  latexmk -xelatex $nombreArchivo.tex
}

nombreArchivo=XMPP_Federado
Genera $nombreArchivo

nombreArchivo=borrador
Genera $nombreArchivo

nombreArchivo=draft_en
Genera $nombreArchivo