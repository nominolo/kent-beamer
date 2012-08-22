.PHONY: default all clean
default: all

LATEX=pdflatex

example.pdf: beamerthemekent.sty beamerouterthemekent.sty

%.pdf: %.tex
	$(LATEX) $<

all: example.pdf

clean:
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb
