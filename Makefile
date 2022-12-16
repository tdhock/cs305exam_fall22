# put at the very beginning to recieve "up to date" message
main.out: main
	./main | tee main.out

all: main.out main main.o get_student_id.o

# correct definition of C compiler
$(CC) = gcc

# create individual targets

main: main.o get_student_id.o 
	$(CC) main.o get_student_id.o -o main
main.o: main.c  
	$(CC) -c main.c
get_student_id.o: get_student_id.c get_student_id.h
	$(CC) -c get_student_id.c 

