main.out: main
  ./main|tee main.out
main: main.o get_student_6182379.o
  cc main.o get_student_6182379.o -o main
main.o: main.c
  cc -c main.c
get_student_6182379.o: get_student_6182379.c
  cc -c get_student_6182379.c
