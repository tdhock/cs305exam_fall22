CC = gcc -Wall
SOURCES = main.c get_student_id.c
OBJECTS = main.o

all: main.out

main.out: main
	./main | tee main.out

main: $(OBJECTS)
	$(CC) $(OBJECTS) -o main

main.o:
	$(CC) $(OBJECTS) -c main.o

get_student_id.o:
	$(CC) $(SOURCES) -c get_student_id.o

clean:
	rm -f $(OBJECTS) main main.out
