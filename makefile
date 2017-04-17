.PHONY:clean
CC = gcc
RM = rm
EXE = simple
OBJS = main.o foo.o
all: first second third
	@echo "\$$@ = $@"
	@echo "$$^ = $^"
	@echo "$$< = $<"
	@echo "MAKE = $(MAKE)"
first second third:

$(EXE):$(OBJS)
	$(CC) -o $@ $^
main.o:main.c
	$(CC) -o $@ -c $^
foo.o:foo.c
	$(CC) -o $@ -c $^
clean:
	$(RM) $(EXE) $(OBJS)