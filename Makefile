CC = gcc -Wall
sFile = main.c get_student_id.c
oFile = main.o

all: main.out

main.out: main
	./main | tee main.out
main: $(oFile)
	$(CC) $(oFile) -o main
main.o: main.c
	$(CC) $(OBJECTS) -o main.o
get_student_id.o:
	$(CC) $(SOURCES) -c get_student_id.o

clean:
	rm -f $(oFile) main main.out
