CC = cc
DEBUG = -g
CFLAGS = -c $(DEBUG)


main.out: main
	./main | tee main.out

main: main.o get_student_id.o
	$(CC) main.o get_student_id.o -o main

main.o: main.c
	$(CC) $(CFLAGS) main.c

get_student_id.o: get_student_id.c get_student_id.h
	$(CC) $(CFLAGS) get_student_id.c


