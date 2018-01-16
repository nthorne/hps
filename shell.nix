with import <nixpkgs> { };

stdenv.mkDerivation {
  name = "hps-env";

  buildInputs = [ ghc haskellPackages.text ];
}

