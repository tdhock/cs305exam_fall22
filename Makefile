CC = cc
CFLAGS = -Wall -Wextra -pedantic

all: main.out

main.out: main
	./main | tee main.out

main: main.o get_student_id.o
	$(CC) $(CFLAGS) -o main main.o get_student_id.o

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

get_student_id.o: get_student_id.c
	$(CC) $(CFLAGS) -c get_student_id.c

clean:
	rm -f main main.o get_student_id.o main.out
