.PHONY: all

all: Weipeng_HE_CV.pdf Weipeng_HE_publications.pdf Weipeng_HE_reviews.pdf Weipeng_HE_Resume.pdf

Weipeng_HE_CV.pdf : Weipeng_HE_CV.tex
	xelatex $<

Weipeng_HE_publications.pdf : Weipeng_HE_publications.tex
	xelatex $<

Weipeng_HE_reviews.pdf : Weipeng_HE_reviews.tex
	xelatex $<

Weipeng_HE_Resume.pdf : Weipeng_HE_CV.pdf
	cp $< $@

.PHONY: clean

clean:
	rm *.log *.out *.aux *.fls *.fdb_latexmk
