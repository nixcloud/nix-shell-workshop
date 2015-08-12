with import <nixpkgs> { };
with goPackages;

buildGoPackage rec {
  name = "helloWorld";
  version = "0.0.1";

  goPackagePath = ".";

  buildInputs = [ go ];
}
