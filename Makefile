main.out: main
	./main | tee main.out
main: main.o get_student_id.o
	cc -o main main.o get_student_id.o
main.o: main.c
	cc -c -g main.c
get_student_id.o: get_student_id.c get_student_id.h
	cc -c -g get_student_id.c
