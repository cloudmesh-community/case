
MARKDOWN-OPTIONS=--verbose --filter pandoc-fignos -f markdown+header_attributes -f markdown+smart -f markdown+emoji --indented-code-classes=bash,python,yamCSL=--csl=template/ieee-with-url.csl
FORMAT=--from markdown --toc --number-sections -V "numbersections=true" --listings
FONTS=--epub-embed-font='fonts/*.ttf'
BIB=--bibliography references.bib
CSS=--css=template/epub.css
RESOURCE=--resource-path=.



all: epub

pdf:
	pandoc --filter pandoc-fignos  title.md README.md   -o vonLaszewski-pi-cluster-case.pdf --from markdown --template "template/eisvogel.latex" --toc -V "numbersections=true" --listings

epub:
	pandoc $(RESOURCE) $(MARKDOWN-OPTIONS)  $(FORMAT) $(FONTS) $(BIB)  $(CSL) $(CSS) -o $(FILENAME).epub metadata.txt title.md README.md
