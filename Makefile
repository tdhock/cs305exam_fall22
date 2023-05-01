CC=gcc

main.out:
		./main | tee main.out
main:	main.o get_student_id.o
		$(CC) -o main.out main.o get_student_id.o

.c.o:
	$(CC) -g -c $<

main.o: main.c
get_student_id.o: get_student_id.c
