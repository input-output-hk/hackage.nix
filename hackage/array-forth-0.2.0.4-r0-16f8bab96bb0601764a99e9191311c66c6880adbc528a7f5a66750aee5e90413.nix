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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "array-forth"; version = "0.2.0.4"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "tikhon@jelv.is";
      author = "Tikhon Jelvis <tikhon@jelv.is>";
      homepage = "";
      url = "";
      synopsis = "A simple interpreter for arrayForth, the language used on GreenArrays chips.";
      description = "This is a package for working with arrayForth. This is a variant of Forth used by GreenArrays chips. This package contains an arrayForth simulator, two different representations of arrayForth programs and some utilities like parsing.\nIt also supports synthesizing arrayForth programs using MCMC. The basic idea is to find arrayForth programs by taking a simple prior distribution of programs and using a randomized hill-climbing algorithm to find a program fulfilling certain tests.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mcmc-synthesis" or (errorHandler.buildDepError "mcmc-synthesis"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."OddWord" or (errorHandler.buildDepError "OddWord"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "mcmc-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mcmc-synthesis" or (errorHandler.buildDepError "mcmc-synthesis"))
            (hsPkgs."array-forth" or (errorHandler.buildDepError "array-forth"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        "array-forth" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."array-forth" or (errorHandler.buildDepError "array-forth"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-array-forth" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework-th" or (errorHandler.buildDepError "test-framework-th"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."array-forth" or (errorHandler.buildDepError "array-forth"))
            ];
          buildable = true;
          };
        };
      };
    }