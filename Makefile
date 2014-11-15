TEX 	= xelatex
doc  =linear_algebra
source = linear_algebra.tex\
ch1.tex\
ch2.tex	
pdf = $(doc).pdf
VIEW_PDF = open
all: $(pdf)
env =

$(pdf): $(source)
	$(env) $(TEX) $<
	$(env) $(TEX) $<
view:
	$(VIEW_PDF) $(doc).pdf
.PHONY: clean
clean:
	rm -f *.aux *.log *.blg *.toc *.out *.lot tex4ht.ps *.4*
	rm -f *.xref* *.lg *.idv *.out *.otc *.tmp tmp.*
	rm -f $(doc).dvi $(doc).ps $(doc).pdf

realclean: clean
	rm -f $(doc).pdf
	rm -f *.html *.htm $(doc).css *.gif *.jpg

