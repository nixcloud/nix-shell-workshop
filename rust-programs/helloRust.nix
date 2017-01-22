{ stdenv, cargo, rustc }:

stdenv.mkDerivation rec {

  version = "0.1.0";

  name = "hello-rust-${version}";

  src = ./hello;

  buildInputs = [ rustc cargo ];

  buildPhase = ''
    cargo build --release
    '';

  installPhase = ''
    mkdir -p $out/bin
    cp -p target/release/hello-rust $out/bin/
    '';

  meta = {
    description = "hello-rust is an awesome tool";
    homepage = "http://www.example.org/hello-rust";
    license = "GPLv3";
    maintainers = with stdenv.lib.maintainers; [ flosse ];
  };
}
