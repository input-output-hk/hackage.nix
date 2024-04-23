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
      identifier = { name = "QuickCheck"; version = "2.12.6"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."erf" or (errorHandler.buildDepError "erf"))
        ] ++ pkgs.lib.optionals (compiler.isGhc && true) [
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ]) ++ pkgs.lib.optional (compiler.isGhc && true && flags.templatehaskell) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2" && (compiler.isGhc && compiler.version.lt "7.6")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))) ++ pkgs.lib.optional (compiler.isGhc && true) (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))) ++ pkgs.lib.optionals (compiler.isUhc && true) [
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
          ];
          buildable = if !flags.templatehaskell then false else true;
        };
        "test-quickcheck-gcoarbitrary" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2" && (compiler.isGhc && compiler.version.lt "7.6")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
          buildable = if !(compiler.isGhc && compiler.version.ge "7.2")
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
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2" && (compiler.isGhc && compiler.version.lt "7.6")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
          buildable = if !(compiler.isGhc && compiler.version.ge "7.2")
            then false
            else true;
        };
        "test-quickcheck-terminal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = if !(compiler.isGhc && compiler.version.ge "7.10")
            then false
            else true;
        };
        "test-quickcheck-monadfix" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = if !(compiler.isGhc && compiler.version.ge "7.10")
            then false
            else true;
        };
      };
    };
  }