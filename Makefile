CC = gcc
DEBUG = -g
CFLAGS = -Wall -c $(DEBUG)
LFLAGS = -Wall $(DEBUG)

main.out : main.o get_student_id.o
	$(CC) $(LFLAGS) get_student_id.o main.o -o main.out

main.o : main.c
	$(CC) $(CFLAGS) main.c

get_student_id.o : get_student_id.c get_student_id.h
	$(CC) $(CFLAGS) get_student_id.c 

clean:
	\rm *.o main.out