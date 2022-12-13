
main.o: main.c
	cc -c main.c
get_student_id.o: get_student_id.c
	cc -c get_student_id.c
main: main.o get_student_id.o
	cc -o
main.out: main
	./main|tee main.out
