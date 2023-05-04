CC=gcc

main.out: main
	./main | tee main.out

main: main.o get_student_id.o 
	 ${CC} main.o get_student_id.o  -o main

main.o: main.c
	${CC} main.c -c 

get_student_id.o: get_student_id.o
	${CC} get_student_id.c -c 
