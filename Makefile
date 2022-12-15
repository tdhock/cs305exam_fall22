CC = gcc
CFLAGS  = -g -Wall

main.out:  main
	./main|tee main.out

main:  get_student_id.o main.o 
	$(CC) $(CFLAGS) -o main get_student_id.o main.o 

main.o:  main.c 
	$(CC) $(CFLAGS) -c main.c

get_student_id.o:  get_student_id.c
	$(CC) $(CFLAGS) -c get_student_id.c

