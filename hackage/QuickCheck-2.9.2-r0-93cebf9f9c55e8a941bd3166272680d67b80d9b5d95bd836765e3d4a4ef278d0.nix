{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      templatehaskell = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "QuickCheck";
        version = "2.9.2";
      };
      license = "BSD-3-Clause";
      copyright = "2000-2016 Koen Claessen, 2006-2008 Björn Bringert, 2009-2016 Nick Smallbone";
      maintainer = "QuickCheck developers <quickcheck@projects.haskell.org>";
      author = "Koen Claessen <koen@chalmers.se>";
      homepage = "https://github.com/nick8325/quickcheck";
      url = "";
      synopsis = "Automatic testing of Haskell programs";
      description = "QuickCheck is a library for random testing of program properties.\n\nThe programmer provides a specification of the program, in\nthe form of properties which functions should satisfy, and\nQuickCheck then tests that the properties hold in a large number\nof randomly generated cases.\n\nSpecifications are expressed in\nHaskell, using combinators defined in the QuickCheck library.\nQuickCheck provides combinators to define properties, observe\nthe distribution of test data, and define test\ndata generators.\n\nYou can find a (slightly out-of-date but useful) manual at\n<http://www.cse.chalmers.se/~rjmh/QuickCheck/manual.html>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = (((((([
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.containers)
        ] ++ pkgs.lib.optional (compiler.isGhc && true) (hsPkgs.transformers)) ++ pkgs.lib.optional (compiler.isGhc && true && flags.templatehaskell) (hsPkgs.template-haskell)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2" && (compiler.isGhc && compiler.version.lt "7.6")) (hsPkgs.ghc-prim)) ++ pkgs.lib.optional (compiler.isGhc && true) (hsPkgs.tf-random)) ++ pkgs.lib.optionals (compiler.isGhc && true) (pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") (hsPkgs.nats))) ++ pkgs.lib.optionals (compiler.isGhc && true) (pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups))) ++ pkgs.lib.optionals (compiler.isUhc && true) [
          (hsPkgs.old-time)
          (hsPkgs.old-locale)
        ];
      };
      tests = {
        "test-quickcheck" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
            (hsPkgs.test-framework)
          ];
        };
        "test-quickcheck-gcoarbitrary" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2" && (compiler.isGhc && compiler.version.lt "7.6")) (hsPkgs.ghc-prim);
        };
        "test-quickcheck-generators" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
          ];
        };
        "test-quickcheck-gshrink" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2" && (compiler.isGhc && compiler.version.lt "7.6")) (hsPkgs.ghc-prim);
        };
      };
    };
  }