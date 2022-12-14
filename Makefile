CC= gcc

main.out: main
	./main | tee main.out

main: get_student_id.o main.o
	$(CC) -o main get_student_id.o main.o

main.o: main.c
	$(CC) -g -c main.c -o main.o

get_student_id.o: get_student_id.c
	$(CC) -g -c get_student_id.c -o get_student_id.o
