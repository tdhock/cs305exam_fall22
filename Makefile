CC=gcc
CFLAGS=-Wall
TARGET=main.out main main.o get_student_id.o

main.out: main
	./main | tee main.out

main: main.o get_student_id.o
	gcc -o main main.o get_student_id.o

main.o: main.c
	gcc -c main.c

get_student_id.o: get_student_id.c get_student_id.h
	gcc -c get_student_id.c get_student_id.h
