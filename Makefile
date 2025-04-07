cc = gcc
objs = dog.o blackcow.o turtle.o main.o
target = animal.exe

$(target): $(objs)
	$(cc) $(objs) -o $(target)

dog.o: dog.c animal.h
	$(cc) -c -o dog.o dog.c

blackcow.o: blackcow.c animal.h
	$(cc) -c -o blackcow.o blackcow.c

turtle.o: turtle.c animal.h
	$(cc) -c -o turtle.o turtle.c
main.o : main.c
	$(cc) -c -o main.o main.c

.PHONY : clean
clean :
	rm $(target) $(objs)
