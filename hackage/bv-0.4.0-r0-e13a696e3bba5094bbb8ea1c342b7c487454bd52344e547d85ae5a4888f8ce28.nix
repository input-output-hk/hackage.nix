{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      gmp = true;
      test = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "bv";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "2012-2016 Iago Abal";
      maintainer = "Iago Abal <mail@iagoabal.eu>";
      author = "Iago Abal <mail@iagoabal.eu>";
      homepage = "http://bitbucket.org/iago/bv-haskell";
      url = "";
      synopsis = "Bit-vector arithmetic library";
      description = "Bit-vectors implemented as a thin wrapper over integers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
        ] ++ pkgs.lib.optionals (compiler.isGhc && true && flags.gmp) [
          (hsPkgs.integer-gmp)
          (hsPkgs.ghc-prim)
        ];
      };
      exes = {
        "bv-tester" = {
          depends  = pkgs.lib.optionals (flags.test) [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
          ];
        };
      };
    };
  }