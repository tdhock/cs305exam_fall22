CC=		gcc
CFLAGS=		-g -c


main.out:	main
		./main | tee main.out
main:		get_student_id.o main.o
		$(CC) -o $@ $^

.c.o:		
		$(CC) $(CFLAGS) $<

main.o:		main.c
get_student_id.o:	get_student_id.c get_student_id.h
