main.out: main
  ./main | tee main.out
  
main: get_student_id.o
  ${CC} get_student_id.o -o main
    
main.o: get_student_id.c
  ${CC} -c get_student_id.c

get_student_id.o: get_student_id.c
  ${CC} -c get-student_id.c
