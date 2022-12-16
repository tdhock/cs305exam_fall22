main.out: main.c
	./main|tee main.out

main: main.o get_student_id.o
	cc main.c -o main.o
	cc main.o

main.o: main.c
	cc main.c -c

get_student_id.o:
	cc get_student_id.c -c
