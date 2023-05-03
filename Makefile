CC=gcc

main.out: main
          ./main | tee main.out
        
main: get_student_id.o main.o
          ${CC} main.o get_student_id.o -o main
          
main.o: main.c
          ${CC} main.c
          
get_student_id.o: get_student_id.c
          ${CC} -c get_student_id.c
 
