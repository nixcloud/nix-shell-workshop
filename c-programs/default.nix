with import <nixpkgs> { };

let
  mylib = callPackage ./mylib.nix {};
  libraryPath = "${mylib}/lib";
in

stdenv.mkDerivation rec {
  name = "myprogram-${version}";
  version = "0.0.1";

  buildInputs = [ mylib ];

  LD_LIBRARY_PATH = libraryPath;
  DYLD_LIBRARY_PATH = libraryPath;
}
