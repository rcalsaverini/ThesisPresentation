CC=pandoc -t beamer
THEME=theme:Malmoe
TEMPLATE=my.beamer
COLORTHEME=colortheme:dolphin
RESOURCE=apresentacao.md
INTERACTIVE=-i

pdf: output.pdf

tex: output.tex

s5: index.html

index.html: $(RESOURCE)
	@pandoc -t s5 --mathjax --self-contained $< -o index.html

output.pdf : $(RESOURCE)
	@$(CC) $< -V $(THEME) -V $(COLORTHEME) --template $(TEMPLATE) -o $@
	@echo "pdf produced"

output.tex : $(RESOURCE)
	@$(CC) $< -V $(THEME) -V $(COLORTHEME) --template $(TEMPLATE) -o $@
	@echo "beamer tex produced"

clean :
	@$(RM) rm *.aux *.log *.nav *.out *.snm *.toc *.vrb
	@echo "temp files deleted"

clean-all: clean
	@$(RM) *.pdf *.tex *.html
