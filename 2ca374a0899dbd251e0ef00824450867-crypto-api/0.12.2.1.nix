{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      all_cpolys = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "crypto-api";
        version = "0.12.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      maintainer = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>, Francisco Blas Izquierdo Riera (klondike)";
      homepage = "https://github.com/TomMD/crypto-api";
      url = "";
      synopsis = "A generic interface for cryptographic operations";
      description = "A generic interface for cryptographic operations (hashes, ciphers, randomness).\nMaintainers of hash and cipher implementations are\nencouraged to add instances for the classes defined\nin Crypto.Classes.  Crypto users are similarly\nencouraged to use the interfaces defined in the Classes\nmodule.\nAny concepts or functions of general use to more than\none cryptographic algorithm (ex: padding) is within\nscope of this package.";
      buildType = "Simple";
    };
    components = {
      "crypto-api" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.tagged)
          (hsPkgs.entropy)
          (hsPkgs.transformers)
        ] ++ pkgs.lib.optional (_flags.all_cpolys) (hsPkgs.array);
      };
    };
  }