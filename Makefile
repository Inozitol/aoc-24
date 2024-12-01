.PHONY: clean
.DEFAULT_GOAL := aoc-24

TARGET = aoc-24

OBJDIR = ./obj
SRCDIR = ./src
SRCFILES = $(wildcard src/*.hs)

$(OBJDIR):
	mkdir $(OBJDIR)

$(TARGET): $(SRCFILES)
	ghc -Wall -outputdir $(OBJDIR) -o $(TARGET) $(SRCFILES)

clean:
	rm $(TARGET) $(OBJDIR)/*
	rmdir $(OBJDIR)

