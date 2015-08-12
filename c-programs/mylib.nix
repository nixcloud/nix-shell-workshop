{stdenv}:

stdenv.mkDerivation rec {
  name = "mylib-1.0.0";

  src = ./mylib; 

  buildInputs = [ ];

  installPhase = ''
    mkdir -p $out/lib
    mkdir -p $out/include
    prefix=$out make install
  '';

  meta = {
    description = "mylib";
    homepage = "http://www.mylib.com/";
    license = "GPL2";
    maintainers = with stdenv.lib.maintainers; [qknight];
  };
}

