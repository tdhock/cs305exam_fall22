CC = gcc
main.out: main
  ./main | tee main.out
main: get_student_id.o main.o
  g++ get_student_id.o main.o -o main
main.o: main.c
  g++ -c
get_student_id.o: get_student_id.c
  g++ -c
