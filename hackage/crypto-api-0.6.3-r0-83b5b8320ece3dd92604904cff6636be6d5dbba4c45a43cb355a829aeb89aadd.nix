{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      tests = false;
      benchmarks = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "crypto-api";
        version = "0.6.3";
      };
      license = "BSD-3-Clause";
      copyright = "Thomas DuBuisson <thomas.dubuisson@gmail.com>, Francisco Blas Izquierdo Riera (klondike) (see AUTHORS)";
      maintainer = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>, Francisco Blas Izquierdo Riera (klondike)";
      homepage = "http://trac.haskell.org/crypto-api/wiki";
      url = "";
      synopsis = "A generic interface for cryptographic operations";
      description = "A generic interface for cryptographic operations,\nplatform independent quality RNG, property tests\nand known-answer tests (KATs) for common algorithms,\nand a basic benchmark infrastructure.\nMaintainers of hash and cipher implementations are\nencouraged to add instances for the classes defined\nin Crypto.Classes.  Crypto users are similarly\nencouraged to use the interfaces defined in the Classes\nmodule.\nAny concepts or functions of general use to more than\none cryptographic algorithm (ex: padding) is within\nscope of this package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.tagged)
          (hsPkgs.largeword)
          (hsPkgs.array)
          (hsPkgs.entropy)
        ] ++ pkgs.lib.optionals (flags.tests) [
          (hsPkgs.QuickCheck)
          (hsPkgs.directory)
          (hsPkgs.filepath)
        ]) ++ pkgs.lib.optionals (flags.benchmarks) [
          (hsPkgs.criterion)
          (hsPkgs.deepseq)
        ];
      };
    };
  }