.PHONY:clean
CC = gcc
RM = rm
EXE = simple
OBJS = main.o foo.o
$(EXE):$(OBJS)
	$(CC) -o $(EXE) $(OBJS)
main.o:
	$(CC) -o main.o -c main.c
foo.o:
	$(CC) -o foo.o -c foo.c
clean:
	$(RM) $(EXE) $(OBJS)