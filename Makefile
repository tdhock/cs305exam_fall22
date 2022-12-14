main.out: main.o get_student_id.o
	gcc main.o get_student_id.o -o main.out

main.o: main.c
	gcc -c main.c
    

get_student_id.o: get_student_id.c get_student_id.h
	gcc -c get_student_id.c
    
clean:
	rm *.o main.out



