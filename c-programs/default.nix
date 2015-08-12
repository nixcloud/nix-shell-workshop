with import <nixpkgs> { };

let
  mylib = callPackage ./mylib.nix {};
in

stdenv.mkDerivation rec {
  name = "myprogram-${version}";
  version = "0.0.1";

  buildInputs = [ mylib ];
}


