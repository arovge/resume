DEPS = src/*
ENTRY = src/main.typ
PDF = austin-rovge-resume.pdf

all: $(PDF)

$(PDF): $(DEPS)
	typst compile $(ENTRY) $(PDF)

clean:
	rm -f $(PDF)
