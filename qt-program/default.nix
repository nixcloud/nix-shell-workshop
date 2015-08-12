with import <nixpkgs> { };

stdenv.mkDerivation rec {
  name = "myprogram-${version}";
  version = "0.0.1";

  buildInputs = [ qt53 ];
}

