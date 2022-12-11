CC=g++
main.out: main
	./main|tee main.out
main: main.o get_student_id.o
	$(CC) main.o get_student_id.o -o main
main.o: main.c
	$(CC) -g -c main.c
get_student_id.o: get_student_id.c
	$(CC) -g -c get_student_id.c
clean:
	rm -f *.o main main.out
