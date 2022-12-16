CC= gcc
main.out: main
	./main | tee main.out 
main: main.o get_student_id.o
	$(CC) -o $@ $(LDFLAGS) main.o get_student_id.o $(LIBS) -o main
main.o: main.c
	$(CC) -c $(CPPFLAGS) $(CFLAGS) $<	
get_student_id.o: get_student_id.c
	$(CC) -c $(CPPFLAGS) $(CFLAGS) $<
