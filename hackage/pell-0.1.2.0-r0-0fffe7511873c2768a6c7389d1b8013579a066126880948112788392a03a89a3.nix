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
      specVersion = "1.20";
      identifier = { name = "pell"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "(c) 2016 by Dr. Lars Brünjes";
      maintainer = "brunjlar@gmail.com";
      author = "Lars Bruenjes";
      homepage = "https://github.com/brunjlar/pell";
      url = "";
      synopsis = "Package to solve the Generalized Pell Equation.";
      description = "Finds all solutions of the generalized Pell Equation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."arithmoi" or (errorHandler.buildDepError "arithmoi"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "test-pell" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."arithmoi" or (errorHandler.buildDepError "arithmoi"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."cabal-test-quickcheck" or (errorHandler.buildDepError "cabal-test-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }