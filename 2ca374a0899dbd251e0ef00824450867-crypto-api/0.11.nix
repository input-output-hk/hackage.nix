{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "crypto-api";
          version = "0.11";
        };
        license = "BSD-3-Clause";
        copyright = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        maintainer = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        homepage = "http://trac.haskell.org/crypto-api/wiki";
        url = "";
        synopsis = "A generic interface for cryptographic operations";
        description = "A generic interface for cryptographic operations (hashes, ciphers, randomness).\nMaintainers of hash and cipher implementations are\nencouraged to add instances for the classes defined\nin Crypto.Classes.  Crypto users are similarly\nencouraged to use the interfaces defined in the Classes\nmodule.\nAny concepts or functions of general use to more than\none cryptographic algorithm (ex: padding) is within\nscope of this package.";
        buildType = "Simple";
      };
      components = {
        crypto-api = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.tagged
            hsPkgs.entropy
            hsPkgs.transformers
          ];
        };
      };
    }