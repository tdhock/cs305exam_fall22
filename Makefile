CC= gcc
 
main.out: ./main
  
main: main.o get_student_id.o
      $(CC) -o $@(LDFLAGS) main.o get_student_id.o $(LIBS)
main.o: main.c
get_student_id.o:
 
main: main.o get_student_id.o
      $(CC) -o $@(LDFLAGS) main.o get_student_id.o $(LIBS)
       
