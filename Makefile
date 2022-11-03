CC=gcc
FC=gfortran
CPP=g++

INC = -I/usr/local/include
LIB = -L/usr/local/lib -lm

OPENBLAS_INC = $(INC) -I/usr/local/opt/openblas/include
OPENBLAS_LIB = $(LIB) -L/usr/local/opt/openblas/lib -lopenblas

first: first.c complex_first.c complex_first_cpp.cc
	$(CC) first.c -o first $(LIB)
	$(CC) complex_first.c -o complex_first $(LIB)
	$(CPP) complex_first_cpp.cc -o complex_first_cpp $(LIB)

blas: blas1.c
	$(CC) $(OPENBLAS_INC) blas1.c -o blas1 $(OPENBLAS_LIB)

all: first blas

clean:
	-rm first
	-rm complex_first
	-rm complex_first_cpp
