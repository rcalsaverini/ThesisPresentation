CC=pandoc -t beamer
THEME=theme:Rochester
TEMPLATE=my.beamer
COLORTHEME=colortheme:beaver
RESOURCE=apresentacao.md
INTERACTIVE=-i
BIB=bibdatabase.bib

s5: $(RESOURCE)
	@pandoc -s -t $@ --mathjax --self-contained $< -o index.html

slidy: $(RESOURCE)
	@pandoc -s -t $@ --mathjax --self-contained $< -o index.html


pdf : $(RESOURCE)
	@$(CC) -s $< -V $(THEME) -V $(COLORTHEME) --toc --slide-level=2 --bibliograph=$(BIB) --biblatex --template=$(TEMPLATE) -o output.pdf
	@echo "pdf produced"

tex : $(RESOURCE)
	@$(CC) -s $< -V $(THEME) -V $(COLORTHEME) --toc --slide-level=2 --bibliograph=$(BIB) --biblatex --template=$(TEMPLATE) -o output.tex
	@echo "beamer tex produced"

clean :
	@$(RM) rm *.aux *.log *.nav *.out *.snm *.toc *.vrb *.bbl *.blg *.xml *~ *-blx.bib
	@echo "temp files deleted"

clean-all: clean
	@$(RM) *.pdf *.tex *.html 
