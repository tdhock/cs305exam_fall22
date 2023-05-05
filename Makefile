CC=gcc

main: main.o get_student_id.o
	${CC} main.o get_student_id.o

main.out: main
	./main | tee main.out

main.o: main.c
	${CC} -g -c main.c

get_student_id.o: get_student_id.c
	${CC} -g -c get_student_id.c


