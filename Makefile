main.out: main
	./main|tee main.out

main.exe: main.o get_student_id.o
	cc main.o get_student_id.o -o main.exe

main.o: main.c
	cc -c main.c

get_student_id.o: get_student_id.c
	cc -c get_student_id.c