all: pyne

flags = -O3

BASE ?= /home/scopatz/miniconda3

pyne: main.o pyne.o
			g++ main.o pyne.o $(flags) -lhdf5 -L$(BASE)/lib -o main

main.o: main.cpp
			g++ -c main.cpp -o main.o -I$(BASE)/include

pyne.o: pyne.cpp
			g++ -c pyne.cpp -o pyne.o -I$(BASE)/include -DPYNE_DECAY_IS_DUMMY

clean:
			rm -rf *.o
