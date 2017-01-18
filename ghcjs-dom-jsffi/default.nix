{ mkDerivation, stdenv, ghcjs-base, text }:
mkDerivation {
  pname = "ghcjs-dom-jsffi";
  version = "0.7.0.4";
  src = ./.;
  libraryHaskellDepends = [
    ghcjs-base text
  ];
  description = "DOM library using JSFFI and GHCJS";
  license = stdenv.lib.licenses.mit;
}
