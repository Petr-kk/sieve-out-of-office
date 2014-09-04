VER:=$(shell perl -n -e'print $$1 if /<em:version>(.*)<\/em:version>/' install.rdf)
FILE:=out-of-office_$(VER).xpi

all: clean xpi

xpi:
	zip -x".git/*" -r $(FILE) *

clean:
	rm -f $(FILE)
