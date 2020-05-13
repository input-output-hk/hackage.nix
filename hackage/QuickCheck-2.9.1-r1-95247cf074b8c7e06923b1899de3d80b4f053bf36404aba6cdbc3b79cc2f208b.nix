{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { templatehaskell = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "QuickCheck"; version = "2.9.1"; };
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
        depends = (((((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && true) (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))) ++ (pkgs.lib).optional (compiler.isGhc && true && flags.templatehaskell) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2" && (compiler.isGhc && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))) ++ (pkgs.lib).optional (compiler.isGhc && true) (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))) ++ (pkgs.lib).optionals (compiler.isGhc && true) ((pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."nats" or (errorHandler.buildDepError "nats")))) ++ (pkgs.lib).optionals (compiler.isGhc && true) ((pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups")))) ++ (pkgs.lib).optionals (compiler.isUhc && true) [
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          ];
        buildable = true;
        };
      tests = {
        "test-quickcheck" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            ];
          buildable = if flags.templatehaskell then true else false;
          };
        "test-quickcheck-gcoarbitrary" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2" && (compiler.isGhc && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
          buildable = if compiler.isGhc && (compiler.version).lt "7.2"
            then false
            else true;
          };
        "test-quickcheck-generators" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = if !flags.templatehaskell then false else true;
          };
        "test-quickcheck-gshrink" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2" && (compiler.isGhc && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
          buildable = if compiler.isGhc && (compiler.version).lt "7.2"
            then false
            else true;
          };
        };
      };
    }