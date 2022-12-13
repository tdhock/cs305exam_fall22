main.out: main 
	./main | tee main.out

main.o: main.c
	gcc -c main.c

main: main.o get_student_id.o
	gcc main.o get_student_id.o -o main

get_student_id.o: get_student_id.c
	gcc -c get_student_id.c
