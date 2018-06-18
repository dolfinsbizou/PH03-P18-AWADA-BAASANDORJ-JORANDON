LATEX_OPT = --shell-escape

all: pdf
pdf: memoire_ph03.tex glossary.tex memoire_ph03_bib.bib
	pdflatex $(LATEX_OPT) memoire_ph03.tex
	pdflatex $(LATEX_OPT) memoire_ph03.tex
	makeglossaries memoire_ph03
	bibtex memoire_ph03 || true
	pdflatex $(LATEX_OPT) memoire_ph03.tex
	pdflatex $(LATEX_OPT) memoire_ph03.tex
quick:
	pdflatex $(LATEX_OPT) memoire_ph03.tex
check:
	lacheck memoire_ph03.tex
clean:
	rm -r `git check-ignore *`
full: pdf
	makeglossaries memoire_ph03
	pdflatex $(LATEX_OPT) memoire_ph03.tex
	pdflatex $(LATEX_OPT) memoire_ph03.tex

.PHONY: quick check clean pdf
