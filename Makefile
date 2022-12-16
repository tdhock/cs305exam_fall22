CC = gcc

main.out: main
        ./main | tee main.out

main: main.o get_student_id.o
        $(CC) -o main.o get_student_id.o

main.o: main.c get_student_id.o
        $(CC) -c main.c

get_student_id.o: get_student_id.c get_student_id.h
        $(CC) -c get_student_id.c get_student_id.h
