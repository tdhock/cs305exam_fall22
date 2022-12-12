main.out: output
	./main | tee main.out

output: main.o get_student_id.o
	cc main.o get_student_id.o -o main

main.o: main.c
	cc -c main.c

get_student_id.o: get_student_id.c get_student_id.h
	cc -c get_student_id.c

