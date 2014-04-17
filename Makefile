SRC := src
export CPP := g++ -std=c++0x

.PHONY: clean all

all: 
	make all -C ${SRC}
clean: 
	make clean -C ${SRC}
