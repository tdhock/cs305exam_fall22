CC=gcc

main.out: main.c
          ./main | tee main.out

main: main.o get_student_id.o
      cc -o main

main.o: main.c
        cc -c main.c
        
get_stedent_id.o: get_student_id.c
                  cc -c get_student_id.c
