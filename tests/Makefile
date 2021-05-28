FC := gfortran

LATEST_PFUNIT_DIR := /gpfs01/software/easybuild-uon/software/pFUnit/4.2.0-gompi-2020b/PFUNIT-4.2/
include $(LATEST_PFUNIT_DIR)/include/PFUNIT.mk

all: test_myFunction

FFLAGS =  -g -c -cpp -DDEBUG -Wall -DDEBUG -Wextra -Wconversion  -ffpe-trap=invalid -ffpe-trap=zero,overflow,underflow -fbacktrace -fdump-core -fcheck=bounds 

%.o : %.F90
	$(FC) -c $(FFLAGS) $<

FFLAGS += $(PFUNIT_EXTRA_FFLAGS)
FFLAGS += -I../src

test_myFunction_TESTS := test_myFunction.pf 
test_myFunction_OTHER_LIBRARIES := -L../src -lsut
$(eval $(call make_pfunit_test,test_myFunction))



error_handling_driver.o: throw_with_pfunit.o

clean:
	$(RM) *.o *.mod *.a  *.inc
	$(RM) test_myFunction

