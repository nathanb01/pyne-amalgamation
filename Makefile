all: pyne

flags = -O3

BASE = /opt/local

pyne: main.o pyne.o
			g++ main.o pyne.o $(flags) -lhdf5 -L$(BASE)/lib -o main

main.o: main.cpp
			g++ -c main.cpp -o main.o -I$(BASE)/include

pyne.o: pyne.cpp
			g++ -c pyne.cpp -o pyne.o -I$(BASE)/include

clean:
			rm -rf *.o
