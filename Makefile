wd = $(shell pwd)
wdDirname = $(shell dirname $(wd))
wdBasename = $(shell basename $(wd))


sparqlifySrc = "~/Desktop/Sparqlify/git/sparqlify-parent"


nothing:
	

all: database


database:
	cd "$(wd)/setup" && sudo ./install-database.sh

sparqlify:
	cd "$(wd)/setup" && ./install-sparqlify.sh


