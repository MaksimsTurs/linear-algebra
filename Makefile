CCOMPILER := gcc
CFLAGS		:= -Wall -Wextra -march=native -mtune=native -O3 -fno-math-errno -fno-trapping-math
CFILES 		:= $(wildcard *.c)
OBJFILES 	:= $(CFILES:.c=.o)

all: $(OBJFILES)
	mkdir -p lib
	ar rsc liblinear-algebra.a $^
	mv liblinear-algebra.a lib/liblinear-algebra.a
	rm -rf *.o

%.o: %.c
	$(CCOMPILER) $(CFLAGS) -c $<
