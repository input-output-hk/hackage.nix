{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Paillier";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "and.liting@gmail.com";
      author = "Li-Ting Tsai";
      homepage = "";
      url = "";
      synopsis = "a simple Paillier cryptosystem";
      description = "a simple Paillier cryptosystem";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.crypto-numbers)
          (hsPkgs.crypto-random)
        ];
      };
      tests = {
        "test-Paillier" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-th)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.base)
            (hsPkgs.crypto-numbers)
            (hsPkgs.crypto-random)
            (hsPkgs.Paillier)
          ];
        };
      };
    };
  }