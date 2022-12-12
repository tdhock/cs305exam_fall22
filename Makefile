main.out: main
  ./main | tee main.out 
  
main: get_student_id.o main.o
  ${CC} get_student_id.o main.o -o
        
main.o: main.c
  ${CC} main.c -c

get_student_id.o: get_student_id.o
  ${CC} get_student_id.c -c
