.PHONY: all
all:
	latexmk -auxdir=out/ -xelatex main.tex titlepage.tex
	cd chapters && latexmk -auxdir=out/ -xelatex *.tex

.PHONY: all
chapters:
	cd chapters && latexmk -auxdir=out/ -xelatex *.tex

.PHONY: all
%.pdf: $(wildcard res/**/*)
	latexmk -auxdir=out/ -xelatex $*.tex