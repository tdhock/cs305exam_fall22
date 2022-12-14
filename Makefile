CC = gcc
FLAGS = -g -Og -Wall -Werror -pedantic cc -c

main.out: main
main: get_student_id.o main.o $@ $(LDFLAGS) $(LIBS)
main.o:	main.c
get_student_id.o: get_student_id.c

all:
	make program
	make clean

program: $(DEPS)
	$(CC) $(FLAGS) -o main $(DEPS)
