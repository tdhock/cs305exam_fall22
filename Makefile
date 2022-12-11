CC = gcc
DEBUG = -g
CFLAGS = -Wall -std=c99 -pedantic -c $(DEBUG)
LFLAGS = -Wall -std=c99 -pedantic $(DEBUG)
all: main_buggy.out main.out main_valgrind.out main_buggy main main.o bar.o baz.o foo_buggy.o foo.o

main.out: main

main: main.o get_student_id.o
	$(CC) $(LFLAGS) main.o get_student_id.o -o main

main.o: main.c
	$(CC) $(CFLAGS) main.c

get_student_id: get_student_id.c get_student_id.h
	$(CC) $(CFLAGS) get_student_id.c

clean:
	\rm *.o main *.out
