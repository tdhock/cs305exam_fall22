# main.out (at the top of my makefile)
main.out: main
        ./main | tee main.out

# Correctly defines the compiler as gcc to the CC variable
CC=     gcc

# An executable target, main
main: main.o get_student_id.o
        $(CC) main.o get_student_id.o -o main
        
# Non-executable .o object file targets for the .o files
main.o: main.c
        $(CC) -c main.c
        
get_student_id.o: get_student_id.c get_student_id.h
        $(CC) -c get_student_id.c
