CC = gcc
DEBUG = -g
CFLAGS = -c $(DEBUG)
LFLAGS = $(DEBUG)

main.out: main.o get_student_id.o 
		$(CC) $(LFLAGS) main.o get_student_id.o -o main
		./main|tee main.out

main.o: main.c 
		$(CC) $(CFLAGS) main.c

get_student_id.o: get_student_id.c
		$(CC) $(CFLAGS) get_student_id.c

clean:
		\rm -f *.o && make