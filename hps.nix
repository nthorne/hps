{ mkDerivation, base, stdenv, text }:
mkDerivation {
  pname = "hps";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base text ];
  homepage = "http://www.github.com/nthorne/hps";
  description = "Simple application to patch shell script shebangs for Nix";
  license = stdenv.lib.licenses.bsd3;
}
