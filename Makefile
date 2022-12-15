CC=gcc

main.out: main.o
	./main | tee main.out

main: main.o get_student_id.o
	$(CC) main.o student.o main -o

main.o: main.c get_student_id.h

get_student_id.o: get_student_id.c get_student_id.h