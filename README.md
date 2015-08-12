# nix-shell workshop

## cpp program with custom library

the example features a self made library called `mylib` which is packaged
using nix - see `mylib.nix` and `default.nix` how that is done.

the library `mylib` is used in a program called `main`.

how to build: enter environment by typing `nix-shell` in ./c-programs afterwards
change directory `cd main` and run `make`

finally run `./main` to see the ultimate answer:

    ./main 
    hello world from the #cccamp2015, the answer is 
    42

## go programs
## qt program

this example features a qt5 console application `console`:

run `cd qt-program` and `nix-shell` to get a qt5 including environment. afterwards
run `qmake` and `make` to generate the console binary. finally run `./console` to obtain:

    hello beautiful world, from #cccamp2015! 

## perl
## python
enter environment by typing `nix-shell` in ./python-program
run simpleCurl by running `python simpleCurl http://test.de`
it will output the html of http://test.de
