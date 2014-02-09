all: stack

stack: stack.o main.o
	gcc -Wall -O2 stack.o main.o -o stack

stack.o: stack.c stack.h
	gcc -Wall -O2 -c stack.c -o stack.o

main.o: main.c
	gcc -Wall -O2 -c main.c -o main.o

clean:
	rm -rf stack main.o stack.o

push:
	git add .
	git commit -m 'Commit from make'
	git push


