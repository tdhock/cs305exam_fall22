CC = gcc

main.out : get_student_id.o main.o
	$(CC) get_student_id.o main.o -o main

get_student_id.o : get_student_id.c get_student_id.h
	$(CC) -c get_student_id.c

main.o : main.c
	$(CC) -c main.c

clean:
	\rm *.o main
