Weipeng_HE_CV.pdf : Weipeng_HE_CV.tex
	xelatex $<

.PHONY: clean

clean:
	rm *.log *.out *.aux *.fls *.fdb_latexmk
