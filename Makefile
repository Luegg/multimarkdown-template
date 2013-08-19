DOCNAME = document
HTMLNAME = $(DOCNAME).html
LATEXNAME = $(DOCNAME).tex
PDFNAME = $(DOCNAME).pdf

TEMP_DIR = .temp

TEMPLATE = templates/report
DOC_METADATA_PLACEHOLDER = %DOCUMENT_METADATA%
DOC_METADATA = metadata
TEMPLATE_METADATA = $(TEMPLATE)/metadata
ALL_METADATA = $(TEMP_DIR)/metadata

BUILD_CMD = awk 'NR!=1&&FNR==1{print ""}1' $(ALL_METADATA) *.md | multimarkdown -f

all: html pdf

temp-dir:
	mkdir -p $(TEMP_DIR)

meta: temp-dir
	sed -e "/$(DOC_METADATA_PLACEHOLDER)/r $(DOC_METADATA)" -e "/$(DOC_METADATA_PLACEHOLDER)/d" $(TEMPLATE_METADATA) > $(ALL_METADATA)

html: meta
	$(BUILD_CMD) -t html > $(HTMLNAME)

latex: meta
	$(BUILD_CMD) -t latex > $(LATEXNAME)

pdf: temp-dir latex
	xelatex -output-directory $(TEMP_DIR) $(LATEXNAME)
	mv $(TEMP_DIR)/$(PDFNAME) $(PDFNAME)

clean:
	-rm $(HTMLNAME) $(LATEXNAME) $(PDFNAME)
	-rm -dR $(TEMP_DIR)