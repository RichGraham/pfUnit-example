#!/bin/bash -f

rm tests/test_myFunction

make -f testsMakefile

./tests/test_myFunction
