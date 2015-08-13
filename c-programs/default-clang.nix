with import <nixpkgs> { };

let
  mylib = callPackage ./mylib.nix { stdenv = clangStdenv; };
in

clangStdenv.mkDerivation rec {
  name = "myprogram-${version}";
  version = "0.0.1";

  buildInputs = [ mylib ];
}


