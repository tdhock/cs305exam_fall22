CC = gcc
CFLAGS = -c

main.out: main
	./main | tee main.out

main: main.o get_student_id.o
	$(CC) -o main get_student_id.o main.o

main.o: main.c
	$(CC) $(CFLAGS) main.c
	
get_student_id.o: get_student_id.c
	$(CC) $(CFLAGS) get_student_id.c

clean:
	rm -f *.o
