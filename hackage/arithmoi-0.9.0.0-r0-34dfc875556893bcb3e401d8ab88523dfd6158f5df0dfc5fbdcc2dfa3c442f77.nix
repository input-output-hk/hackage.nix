{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { check-bounds = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "arithmoi"; version = "0.9.0.0"; };
      license = "MIT";
      copyright = "(c) 2011 Daniel Fischer, 2016-2018 Andrew Lelechenko, Carter Schonwald";
      maintainer = "Carter Schonwald  carter at wellposed dot com,\nAndrew Lelechenko andrew dot lelechenko at gmail dot com";
      author = "Daniel Fischer";
      homepage = "https://github.com/cartazio/arithmoi";
      url = "";
      synopsis = "Efficient basic number-theoretic functions.";
      description = "A library of basic functionality needed for\nnumber-theoretic calculations. The aim of this library\nis to provide efficient implementations of the functions.\nPrimes and related things (totients, factorisation),\npowers (integer roots and tests, modular exponentiation).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.exact-pi)
          (hsPkgs.ghc-prim)
          (hsPkgs.integer-gmp)
          (hsPkgs.integer-logarithms)
          (hsPkgs.random)
          (hsPkgs.transformers)
          (hsPkgs.semirings)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "sequence-model" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.arithmoi)
            (hsPkgs.containers)
            (hsPkgs.hmatrix-gsl)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.arithmoi)
            (hsPkgs.containers)
            (hsPkgs.exact-pi)
            (hsPkgs.integer-gmp)
            (hsPkgs.QuickCheck)
            (hsPkgs.semirings)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            ];
          };
        };
      benchmarks = {
        "criterion" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.arithmoi)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.gauge)
            (hsPkgs.integer-logarithms)
            (hsPkgs.random)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }