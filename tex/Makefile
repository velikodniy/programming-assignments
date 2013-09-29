include ../Makefile
HOME:=$(shell readlink -f ..)

CWD=$(shell readlink -f .)
MAIN=book.tex
REFS=references.bib

.PHONY: book
book:
	xelatex --output-directory="$(BUILDDIR)" --jobname="$(JOB)" "$(MAIN)"
	cd "$(BUILDDIR)"; makeindex "$(JOB).idx"
	ln -fs "$(CWD)/$(REFS)" "$(BUILDDIR)/$(REFS)"
	cd "$(BUILDDIR)"; bibtex "$(JOB)"
	xelatex --output-directory="$(BUILDDIR)" --jobname="$(JOB)" "$(MAIN)"
