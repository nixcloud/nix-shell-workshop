with import <nixpkgs> { };

let
  helloRust = callPackage ./helloRust.nix {};
in

stdenv.mkDerivation rec {
  name = "rust-example-${version}";
  version = "0.0.1";

  buildInputs = [ helloRust ];
}


