CC = gcc
CFLAGS = -Wall -c -g
LFLAGS = -Wall

main.out : main
	./main | tee main.out

main : main.o get_student_id.o
	$(CC) $(LFLAGS) main.o get_student_id.o -o main

main.o : main.c
	$(CC) $(CFLAGS) main.c

get_student_id.o : get_student_id.c
	$(CC) $(CFLAGS) get_student_id.c
