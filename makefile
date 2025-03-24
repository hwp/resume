.PHONY: all

VERSIONS = 1 2 3

all: Weipeng_HE_publications.pdf Weipeng_HE_reviews.pdf $(foreach ver, $(VERSIONS), Weipeng_HE_Resume_v$(ver).pdf)

%.pdf : %.tex
	xelatex $<

Weipeng_HE_Resume_v%.tex : Weipeng_HE_CV.tex
	sed 's/\\newcommand{\\version}{.*}/\\newcommand{\\version}{$*}/' $< > $@

.PHONY: clean

clean:
	rm *.log *.out *.aux *.fls *.fdb_latexmk
