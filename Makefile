~CC = cc

all: main.out

main.out: main
	./main | tee main.out

main: main.o get_vc596.c
	$(CC) -c main main.c get_vc596.o

main.c: main.h
	$(CC) -h main.h

get_student_id.c: get_vc596.h
	$(CC) -h get_vc596.h

clean:
	rm -f main main.c get_vc596.c main.out
~
