SRC := src
export BIN_DIR = $(shell pwd)
export CXXFLAGS := -std=c++0x

.PHONY: clean all

all: 
	make all -C ${SRC}
debug:
	make debug -C ${SRC}
log:
	make log -C ${SRC}
clean: 
	make clean -C ${SRC}
