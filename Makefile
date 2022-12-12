CC = gcc
CFLAGS = -Wall -Wextra -O0 -std=c11


main: main.o get_student_id.o
main.out: ./main | tee main.out

main.o: main.c
get_student_id.o: get_student_id.c
