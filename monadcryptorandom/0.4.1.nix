{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monadcryptorandom";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        maintainer = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        homepage = "http://trac.haskell.org/crypto-api/wiki";
        url = "";
        synopsis = "A monad for using CryptoRandomGen";
        description = "A monad for using CryptoRandomGen";
        buildType = "Simple";
      };
      components = {
        monadcryptorandom = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.crypto-api
            hsPkgs.transformers
          ];
        };
      };
    }