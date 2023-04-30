CC = gcc -Wall
SOURCES = main.c get_student_id.c
OBJECTS = main.o get_student_id.o

all: main.out

main.out: main
	./main | tee main.out

main: $(OBJECTS)
	$(CC) $(OBJECTS) -o main

main.o: main.c
	$(CC) -c main.c -o main.o

get_student_id.o: get_student_id.c
	$(CC) -c get_student_id.c -o get_student_id.o

clean:
	rm -f $(OBJECTS) main main.out
