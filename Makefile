TARGET=report.pdf
.PHONY: all clean open

all: ${TARGET}

open: all
	xdg-open ${TARGET}

clean:
	rm -f *.pdf *.aux *.dvi *.fls *.log *.out *.xdv *.fdb_latexmk *.toc

%.pdf: %.tex
	latexmk -xelatex -halt-on-error $<
