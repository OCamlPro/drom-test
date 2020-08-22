
DEV_DEPS := merlin ocamlformat

all:
	dune build
	cp -f _build/default/src/main.exe drom-test

build-deps:
	opam install --deps-only ./drom-test.opam

dev-deps:
	opam install -y ${DEV_DEPS}

init:
	git submodule init
	git submodule update

doc: html
	markdown docs/index.md > docs/index.html

html:
	sphinx-build sphinx docs/doc

view:
	xdg-open file://$$(pwd)/docs/doc/index.html

fmt:
	dune build @fmt
