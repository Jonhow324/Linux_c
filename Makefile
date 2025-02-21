
.PHONY : clear

object := main.o \
		  hello.o


main: $(object)
	gcc  main.o hello.o -o main

main.o : main.c hello.h 
	gcc -c main.c 

hello.o: hello.c hello.h 
	gcc -c hello.c  

clean:
	rm -f $(object)

clear:
	rm -f main