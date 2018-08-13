{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      tests = false;
      benchmarks = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "crypto-api";
        version = "0.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Thomas DuBuisson <thomas.dubuisson@gmail.com>, Dominic Steinitz (see Data.LargeWord module)";
      maintainer = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>, Dominic Steinitz";
      homepage = "";
      url = "";
      synopsis = "A generic interface for cryptographic operations";
      description = "A generic interface for cryptographic operations,\nplatform independent quality RNG, property tests\nand known-answer tests (KATs) for common algorithms,\nand a basic benchmark infrastructure.\nMaintainers of hash and cipher implementations are\nencouraged to add instances for the classes defined\nin Crypto.Classes.  Crypto users are similarly\nencouraged to use the interfaces defined in the Classes\nmodule.\nAny concepts or functions of general use to more than\none cryptographic algorithm (ex: padding) is within\nscope of this package.";
      buildType = "Simple";
    };
    components = {
      "crypto-api" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.cereal)
          (hsPkgs.tagged)
          (hsPkgs.random)
          (hsPkgs.filepath)
        ] ++ pkgs.lib.optionals (_flags.tests) [
          (hsPkgs.QuickCheck)
          (hsPkgs.parsec)
          (hsPkgs.directory)
        ]) ++ pkgs.lib.optional (_flags.benchmarks) (hsPkgs.criterion);
      };
    };
  }