FILES = thesis
GRAPHS = tree_edit_distance1 tree_edit_distance2 tree_edit_distance3 tree_edit_distance4

all: $(GRAPHS) $(FILES)

$(FILES):
	pdflatex $@
	bibtex $@
	pdflatex $@
	pdflatex $@

$(GRAPHS):
	dot -Tpng $@.dot -o $@.png

.PHONY: clean
clean:
	rm -rf $(FILES).aux $(FILES).bbl $(FILES).blg $(FILES).dvi $(FILES).log $(FILES).out $(FILES).toc $(FILES).pdf
