CC = gcc

main.out: main
	./main | tee main.out

main: main.o get_student_id.o

main.o: main.c get_student_id.h

get_student_id.o: get_student_id.c
