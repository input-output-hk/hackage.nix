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
        name = "test-invariant";
        version = "0.4.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Florian Knupfer";
      maintainer = "Florian Knupfer <fknupfer@gmail.com>";
      author = "Florian Knupfer <fknupfer@gmail.com>";
      homepage = "https://github.com/knupfer/test-invariant";
      url = "";
      synopsis = "Provide common invariants to be checked with QuickCheck";
      description = "test-invariant is a library for providing common invariants of\nfunctions as higher order polymorphic functions.  This reduces for a\nlot of cases the need for writing prop_ functions for QuickCheck.\n\n>>> quickCheck \$ idempotent (abs :: Int -> Int)\n>>> quickCheck \$ involutory not\n>>> quickCheck \$ not . involutory (+ (2 :: Int))";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "Tasty" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.test-invariant)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
      benchmarks = {
        "Criterion" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.test-invariant)
            (hsPkgs.criterion)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }