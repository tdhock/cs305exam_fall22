CC = gcc
DEBUG = -g
CFLAGS = -Wall -std=c99 -pedantic -c $(DEBUG)
LFLAGS = -Wall -std=c99 -pedantic $(DEBUG)
all: main.out main main.o get_student_id.o

main.out: main

main: main.o get_student_id.o
	$(CC) $(LFLAGS) main.o get_student_id.o -o main

main.o: main.c
	$(CC) $(CFLAGS) main.c

get_student_id: get_student_id.c get_student_id.h
	$(CC) $(CFLAGS) get_student_id.c

clean:
	\rm *.o main *.out
