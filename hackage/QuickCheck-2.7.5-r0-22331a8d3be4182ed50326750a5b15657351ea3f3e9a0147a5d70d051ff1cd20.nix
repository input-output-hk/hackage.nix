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
    flags = { base3 = true; base4 = true; templatehaskell = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "QuickCheck"; version = "2.7.5"; };
      license = "BSD-3-Clause";
      copyright = "2000-2014 Koen Claessen, 2006-2008 Björn Bringert, 2009-2014 Nick Smallbone";
      maintainer = "QuickCheck developers <quickcheck@projects.haskell.org>";
      author = "Koen Claessen <koen@chalmers.se>";
      homepage = "https://github.com/nick8325/quickcheck";
      url = "";
      synopsis = "Automatic testing of Haskell programs";
      description = "QuickCheck is a library for random testing of program properties.\n\nThe programmer provides a specification of the program, in\nthe form of properties which functions should satisfy, and\nQuickCheck then tests that the properties hold in a large number\nof randomly generated cases.\n\nSpecifications are expressed in\nHaskell, using combinators defined in the QuickCheck library.\nQuickCheck provides combinators to define properties, observe\nthe distribution of test data, and define test\ndata generators.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((((((if flags.base4
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ]
          else if flags.base3
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."random" or (errorHandler.buildDepError "random"))
              ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7") (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.12" && flags.templatehaskell) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.7" && (compiler.isGhc && (compiler.version).lt "6.13")) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.9" && (compiler.isGhc && (compiler.version).lt "7.0")) (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2" && (compiler.isGhc && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7" && flags.base4) (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))) ++ (pkgs.lib).optionals (compiler.isUhc && true) [
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          ];
        buildable = true;
        };
      tests = {
        "test-quickcheck" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            ];
          buildable = true;
          };
        };
      };
    }