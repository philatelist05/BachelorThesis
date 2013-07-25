FILES = thesis

all: $(FILES)

$(FILES):
	pdflatex $@
	bibtex $@
	pdflatex $@
	pdflatex $@

