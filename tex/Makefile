include ../Makefile
HOME:=$(shell readlink -f ..)
CWD=$(shell readlink -f .)
MAIN=book.tex

.PHONY: book
book:
	xelatex --output-directory="$(BUILDDIR)" --jobname="$(JOB)" "$(MAIN)"
	cd "$(BUILDDIR)"; makeindex "$(JOB).idx"
	xelatex --output-directory="$(BUILDDIR)" --jobname="$(JOB)" "$(MAIN)"
