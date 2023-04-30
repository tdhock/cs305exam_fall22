CC = g++

CFLAGS = -Wall -Werror

output: get_student_id.o main.o
  g++ get_student_id.o main.o -o main.out
 
get_student_id.o: get_student_id.c
  g++ -c get_student_id.c
  
main.o: main.c
  g++ -c main.c
  
clean:
  rm *.o main
