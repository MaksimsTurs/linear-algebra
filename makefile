CCOMPILER := gcc
CWARNS		:= -Wall -Wextra
COPT			:= -std=c99 -march=native -mtune=native -O2 -fno-math-errno -ftrapping-math

all: mkdirs libmatrix libtransform

mkdirs:
	mkdir -p libs
	mkdir -p objs

libmatrix: mkdirs
	$(CCOMPILER) $(CWARNS) $(COPT) matrix.c -c
	mv matrix.o objs/matrix.o
	ar rsc libmatrix.a objs/matrix.o
	mv libmatrix.a libs/libmatrix.a

libtransform: mkdirs
	$(CCOMPILER) $(CWARNS) $(COPT) transform.c -c
	mv transform.o objs/transform.o
	ar rsc libtransform.a objs/transform.o
	mv libtransform.a libs/libtransform.a
