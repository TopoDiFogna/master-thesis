all: clean compile

restart:
	rm -f thesis.pdf

compile: restart
	./pdflatex-color.sh thesis.tex
	bibtex thesis
	./pdflatex-color.sh thesis.tex
	./pdflatex-color.sh thesis.tex
	evince thesis.pdf &

clean:
	rm -f *.bbl *.log *.lot *.toc *.out *.blg *.aux *.txt img/*converted-to.pdf thesis.pdf
