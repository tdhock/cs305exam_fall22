main.out:
  ./main | tee main.out

main: main.o get_student_id.o
  gcc -o main main.o get_student_id.o

main.o:
  gcc -c main.c 

get_student_id.o: get_student_id.c
  gcc -c get_student_id.c
