CC= gcc
 
main.out: ./main
 
main.o: main.c
get_student_id.o:
 
 
main: main.o get_student_id.o
      $(CC) -o $@(LDFLAGS) main.o get_student_id.o $(LIBS)
       
.c.o:
     $(CC) -c (CPPFLAGS) $(CFLAGS) $<
