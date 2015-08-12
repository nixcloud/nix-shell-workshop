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

# questions
* pick 3 of the examples above and build the software as described using `nix-shell` and run the programs to see that they work
* why does the `cpp program with custom library` find the `mylib.so`, as for instance, pkg-config is not used at all?
* use `nix-shell -p clang` (instead of using nix-shell with default.nix) and compile the cpp program+library example using llvm instead of gcc
* when you compile the `cpp program with custom library`, can you still run the program from a different environment where you don't use nix-shell prior execution? also try this for the `python` example above and compare the results!
* what is the effect of running `nix-shell --pure` in one shell vs. running `nix-shell` in a second shell? use the `export` command in either to see what parameters changed. use https://www.diffchecker.com/diff to compare the values you obtained
* issue `nix-env -qaP | grep python` and see that there is python 2.x and 3.x ;figure out how to get a nix-shell with python 2.x and one with python 3.x, issue `python --version` to verify that you got the right version!
* nix-shell can be used with a local checkout of nixpkgs, `nix-shell -I nixpkgs=/foo/bar/nixpkgs --pure -p cmake`, therefore clone nixpkgs 'master' from https://github.com/nixos/nixpkgs and issue the above command. compare the result to `nix-shell -I nixpkgs=/foo/bar/nixpkgs --pure -p cmake` in regards to amount of downloads/ build targets and compare the two outcomes
* what is the major difference between using `nix-shell` and `myEnvFun`, read http://blog.lastlog.de/posts/developing_software_using_nixos/ to learn about myEnvFun. afterwards adapt the `cpp program with custom library` to use myEnvFun instead of `nix-shell` 
* play with persistent `nix-shell` environments, see https://nixos.org/wiki/Development_Environments#Making_a_Persistent_nix-shell_Environment

# documentation
* https://nixos.org/wiki/Development_Environments
* http://blog.lastlog.de/posts/developing_software_using_nixos/
