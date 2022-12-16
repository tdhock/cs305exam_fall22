CC = gcc

main.out:main
  ./main | tee main.out 

main: main.o get_student_id.o 
  gcc main.o get_student_id.o -main

main.o: main.c
  gcc -c main.c

get_student_id.o: get_student_id.c get_student_id.h
  gcc -c get_student_id.c get_student_id.h

clean:
  rm *.o main
