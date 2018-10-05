all: epub pdf

pdf:
	pandoc title.md README.md   -o vonLaszewski-pi-cluster-case.pdf --from markdown --template "template/eisvogel.latex" --toc -V "numbersections=true" --listings

epub:
	pandoc title.md README.md   -o vonLaszewski-pi-cluster-case.epub --from markdown --toc -V "numbersections=true" --listings
