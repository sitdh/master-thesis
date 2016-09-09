SITDHIBONG=sitdhibong
CONFIG_LOCATION=0-configure
PRELIMINARY=0-preliminary
INTRODUCTION=1-intro
RELATED_WORK=2-related

config:
	pip install pywatch

build: 
	@bibtex $(SITDHIBONG)
	xelatex -interaction=nonstopmode $(SITDHIBONG).tex
	xelatex -interaction=nonstopmode $(SITDHIBONG).tex

watch: *.tex *.bib $(PRELIMINARY)/*.tex $(INTRODUCTION)/*.tex $(RELATED_WORK)/*.tex $(CONFIG_LOCATION)/*.tex
	@pywatch "make -B build" $?
