{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { templatehaskell = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "QuickCheck"; version = "2.12.3"; };
      license = "BSD-3-Clause";
      copyright = "2000-2018 Koen Claessen, 2006-2008 Björn Bringert, 2009-2018 Nick Smallbone";
      maintainer = "Nick Smallbone <nick@smallbone.se>";
      author = "Koen Claessen <koen@chalmers.se>";
      homepage = "https://github.com/nick8325/quickcheck";
      url = "";
      synopsis = "Automatic testing of Haskell programs";
      description = "QuickCheck is a library for random testing of program properties.\nThe programmer provides a specification of the program, in the form of\nproperties which functions should satisfy, and QuickCheck then tests that the\nproperties hold in a large number of randomly generated cases.\nSpecifications are expressed in Haskell, using combinators provided by\nQuickCheck. QuickCheck provides combinators to define properties, observe the\ndistribution of test data, and define test data generators.\n\nMost of QuickCheck's functionality is exported by the main \"Test.QuickCheck\"\nmodule. The main exception is the monadic property testing library in\n\"Test.QuickCheck.Monadic\".\n\nIf you are new to QuickCheck, you can try looking at the following resources:\n\n* The <http://www.cse.chalmers.se/~rjmh/QuickCheck/manual.html official QuickCheck manual>.\nIt's a bit out-of-date in some details and doesn't cover newer QuickCheck features,\nbut is still full of good advice.\n* <https://begriffs.com/posts/2017-01-14-design-use-quickcheck.html>,\na detailed tutorial written by a user of QuickCheck.\n\nThe <http://hackage.haskell.org/package/quickcheck-instances quickcheck-instances>\ncompanion package provides instances for types in Haskell Platform packages\nat the cost of additional dependencies.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((([
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.containers)
          (hsPkgs.erf)
          ] ++ (pkgs.lib).optionals (compiler.isGhc && true) [
          (hsPkgs.transformers)
          (hsPkgs.deepseq)
          ]) ++ (pkgs.lib).optional (compiler.isGhc && true && flags.templatehaskell) (hsPkgs.template-haskell)) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2" && (compiler.isGhc && (compiler.version).lt "7.6")) (hsPkgs.ghc-prim)) ++ (pkgs.lib).optional (compiler.isGhc && true) (hsPkgs.tf-random)) ++ (pkgs.lib).optionals (compiler.isUhc && true) [
          (hsPkgs.old-time)
          (hsPkgs.old-locale)
          ];
        };
      tests = {
        "test-quickcheck" = {
          depends = [ (hsPkgs.base) (hsPkgs.QuickCheck) ];
          };
        "test-quickcheck-gcoarbitrary" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2" && (compiler.isGhc && (compiler.version).lt "7.6")) (hsPkgs.ghc-prim);
          };
        "test-quickcheck-generators" = {
          depends = [ (hsPkgs.base) (hsPkgs.QuickCheck) ];
          };
        "test-quickcheck-gshrink" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2" && (compiler.isGhc && (compiler.version).lt "7.6")) (hsPkgs.ghc-prim);
          };
        "test-quickcheck-terminal" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            ];
          };
        "test-quickcheck-monadfix" = {
          depends = [ (hsPkgs.base) (hsPkgs.QuickCheck) ];
          };
        };
      };
    }