FILENAME=vonLaszewski-pi-cluster-case

MARKDOWN-OPTIONS=--verbose --filter pandoc-fignos -f markdown+header_attributes -f markdown+smart -f markdown+emoji --indented-code-classes=bash,python,yaml
CSL=--csl=template/ieee-with-url.csl
FORMAT=--from markdown --toc --number-sections -V "numbersections=true" --listings
FONTS=--epub-embed-font='fonts/*.ttf'
BIB=--bibliography references.bib
CSS=--css=template/epub.css
RESOURCE=--resource-path=.



all: epub pdf

pdf:
	@echo "###############################################################################"
	@echo "# create" $(FILENAME).pdf
	@echo "###############################################################################"
	pandoc --filter pandoc-fignos  title.md README.md   -o $(FILENAME).pdf --from markdown --template "template/eisvogel.latex" --toc -V "numbersections=true" --listings

epub:
	@echo "###############################################################################"
	@echo "# create" $(FILENAME).epub
	@echo "###############################################################################"
	pandoc $(RESOURCE) $(MARKDOWN-OPTIONS)  $(FORMAT) $(FONTS) $(BIB)  $(CSL) $(CSS) -o $(FILENAME).epub metadata.txt title.md README.md; false
