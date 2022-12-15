CC = gcc

main.out: main.o
	gcc main.o -o main.out

main.o: main.c
	gcc -c main.c

get_student_id.o: get_student_id.o
	gcc -c get_student_id.c

clean:
	rm *.o main.out
