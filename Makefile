DEPS = main.tex header.tex skills.tex experience.tex education.tex projects.tex
PDF = resume

all: $(PDF)

$(PDF): $(DEPS)
	lualatex --jobname=$(PDF) $(DEPS)

clean:
	rm -f *.log
	rm -f *.fdb_latexmk
	rm -f *.fls
	rm -f *.aux
	rm -f *.out
	rm -f *.pdf
