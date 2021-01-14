# pfUnit-example
A minimal example of pfUnit on a mac

====Prerequisites====
Check the prerequisites at https://github.com/Goddard-Fortran-Ecosystem/pFUnit

====Install pfUnit====
This is based on the instructions at https://github.com/Goddard-Fortran-Ecosystem/pFUnit

$ git clone https://github.com/Goddard-Fortran-Ecosystem/pFUnit.git
$ cd pFUnit
$ mkdir build
$ cd build
$ cmake ..
$ make tests
$ make install

====Building the code and tests====
Change to the directory pfUnit-example/
All of the below work for fortran9 but also should work for fortran 8 (I've not checked this!)

____Main code____
Running 'make' will compile the code but not the tests. The makefile assumes that the command 'gfortran-fsf-9' calls the fortran 9 compiler. If not edit the line 'FC = gfortran-fsf-9' in makefile or set up an alias so that gfortran-fsf-9 calls your fortran compiler.
Running ./Main.out runs the main code and should give output '16.000000000' to the terminal.

____Tests____
If gfortran-fsf-9 does not call your fortran 9 compiler then create an alias or edit the following makefiles
./tests/Makefile
./testsMakefile
./src/Makefile

Then run:
$ ./build_and_run_tests.x

which will compile the code and the tests and then run the test. If the tests are successful the output should look like

Time:         0.001 seconds
  
 OK
 (1 test)



