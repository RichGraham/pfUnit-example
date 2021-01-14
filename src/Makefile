FC := gfortran-fsf-9
SRCS := myFunction.F90
OBJS := $(SRCS:%.F90=%.o)

MODS=$(wildcard mod*.f90)
MOD_OBJS=$(patsubst %.f90,%.o,$(MODS))

FCFLAGS =  -g -c -cpp -DDEBUG -Wall -DDEBUG -Wextra -Wconversion  -ffpe-trap=invalid -ffpe-trap=zero,overflow,underflow -fbacktrace -fdump-core -fcheck=bounds 

FLFLAGS = 

all: libsut.a

libsut.a: $(OBJS)
	$(AR) $(FLFLAGS) -r $@ $?

%.o : %.F90
	$(FC) $(FCFLAGS)  -c $(FFLAGS) $<

clean:
	$(RM) *.o *.mod *.a

