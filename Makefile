JOB=programming-assignments

HOME:=$(shell readlink -f .)
BUILDDIR=$(HOME)/build

.PHONY: all
all:
	install -d "$(BUILDDIR)"
	@$(MAKE) -C "$(HOME)/tex" book

.PHONY: clean
clean:
	rm -rf "$(BUILDDIR)"

.PHONY: docker
docker:
	docker build -t docker-latex .
	docker run -ti -v $(CURDIR):/book docker-latex bash -c "make"