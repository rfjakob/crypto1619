#!/usr/bin/make
# Time-stamp: <2008-06-03 17:35>
# Revision date: $Date: 2008-05-24 22:48:05 -0600 (Sat, 24 May 2008) $

.PHONY: all print clean dist

all:
	cd doc  && $(MAKE) all
	cd eme2 && $(MAKE) all

print:
	cd src  && $(MAKE) print
	cd eme2 && $(MAKE) print

clean:
	rm -f *~
	cd eme2 && $(MAKE) clean
	cd doc  && $(MAKE) clean
	rm -f html/*
dist:
	@echo "Nothing here yet"
