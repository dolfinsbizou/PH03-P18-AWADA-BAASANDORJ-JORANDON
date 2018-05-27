LATEX_OPT = --shell-escape

all: pdf
pdf: memoire_ph03.tex #bibliography.bib
	pdflatex $(LATEX_OPT) memoire_ph03.tex
	#makeglossaries memoire_ph03
	#biber memoire_ph03 || true
	#pdflatex $(LATEX_OPT) memoire_ph03.tex
	pdflatex $(LATEX_OPT) memoire_ph03.tex
quick:
	pdflatex $(LATEX_OPT) memoire_ph03.tex
check:
	lacheck memoire_ph03.tex
clean:
	rm `git check-ignore *`
full: pdf
	makeglossaries memoire_ph03
	pdflatex $(LATEX_OPT) memoire_ph03.tex
	pdflatex $(LATEX_OPT) memoire_ph03.tex

.PHONY: quick check clean pdf
