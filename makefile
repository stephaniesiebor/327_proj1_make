#Makefile for 327_proj1_make
#Stephanie Siebor, 9/11/2021

CFLAGS = -Wall
#target exe

all: main.o myfunc.o
		g++ $(CFLAGS) -o myexe main.o myfunc.o
		
#rebuild if either of the files below change
main.o: main.cpp myfunc.cpp
		g++ $(CFLAGS) -c main.cpp

#rebuild of wither of the files below change
myfunc.o: myfunc.cpp myfunc.h
		g++ $(CFLAGS) -c myfunc.cpp
		
#type 'make claen' to remove following
clean:
		rm -f *.o myexe