
all: main.o get_student_id.o
	gcc -o main main.o get_student_id.o
	./main | tee main.out
	
main.o: main.c
	gcc -c main.c
	
get_student_id.o: get_student_id.c
	gcc -c get_student_id.c
	
clean:
	rm -f *.o
