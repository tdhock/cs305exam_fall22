main.out:	./main|tee main.out

main:	cc -o main.o get_student_id.o

main.o:		cc -c main.c

get_student_id.o:	cc -c get_student_id.c get_student_id.h



