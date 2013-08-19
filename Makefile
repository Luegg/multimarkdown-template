DOCNAME = output
HTMLNAME = $(DOCNAME).html
LATEXNAME = $(DOCNAME).tex
PDFNAME = $(DOCNAME).pdf

TEMP_DIR = .temp

DOC_METADATA = metadata

TEMPLATE_DIR = $(firstword $(shell multimarkdown -e templatedir $(DOC_METADATA)) report)

DOC_METADATA_PLACEHOLDER = %DOCUMENT_METADATA%
TEMPLATE_METADATA = $(TEMPLATE_DIR)/metadata
ALL_METADATA = $(TEMP_DIR)/metadata

MMD_BUILD_CMD = awk 'NR!=1&&FNR==1{print ""}1' $(ALL_METADATA) *.md | multimarkdown -f

all: html latex pdf

temp-dir:
	mkdir -p $(TEMP_DIR)

meta: temp-dir
	sed -e "/$(DOC_METADATA_PLACEHOLDER)/r $(DOC_METADATA)" -e "/$(DOC_METADATA_PLACEHOLDER)/d" $(TEMPLATE_METADATA) > $(ALL_METADATA)

html: meta
	$(MMD_BUILD_CMD) -t html > $(HTMLNAME)

latex: meta
	$(MMD_BUILD_CMD) -t latex > $(LATEXNAME)

pdf: temp-dir latex
	latexmk -pdf -output-directory=$(TEMP_DIR) $(LATEXNAME)
	mv $(TEMP_DIR)/$(PDFNAME) $(PDFNAME)

clean:
	-rm $(HTMLNAME) $(LATEXNAME) $(PDFNAME)
	-rm -dR $(TEMP_DIR)