# pfUnit-example
A minimal example of pfUnit on the University of Nottingham HPC

====Modules====
First unload any compiler modules you have loaded
To load the required module, run (note this wil not work with version 3 of pfUnit) 
module load pfunit-uoneasy/4.2.0-gompi-2020b


____Main code____
Running 'make' will compile the code but not the tests. 
Running ./Main.out runs the main code and should give output '16.000000000' to the terminal.

____Tests____
Run:
$ ./build_and_run_tests.x

which will compile the code and the tests and then run the test. If the tests are successful the output should look like

Time:         0.001 seconds
  
 OK
 (1 test)

For more about pFUnit see  https://github.com/Goddard-Fortran-Ecosystem/pFUnit