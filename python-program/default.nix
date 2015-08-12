let
  pkgs = import <nixpkgs> {};
  stdenv = pkgs.stdenv;

in stdenv.mkDerivation {
  name = "simpleCurl-env";

  buildInputs = with pkgs; [
    python2
    python2Packages.mechanize
  ];
}
