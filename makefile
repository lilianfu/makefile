all: main.o foo.o
	gcc -o simple main.o foo.o
main.o:
	gcc -o main.o -c main.c
foo.o:
	gcc -o foo.o -c foo.c
clean:
	rm simple main.o foo.o