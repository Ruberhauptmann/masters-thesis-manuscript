.PHONY: all
all:
	latexmk -auxdir=out/ -xelatex main.tex titlepage.tex
	cd chapters && latexmk -auxdir=out/ -xelatex *.tex

.PHONY: all
chapters:
	cd chapters && latexmk -auxdir=out/ -xelatex *.tex

%.pdf: %.tex
	latexmk -auxdir=out/ -xelatex -pvc $*.tex