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
      identifier = { name = "NumberTheory"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "chris.p.fredrickson@gmail.com";
      author = "Chris Fredrickson";
      homepage = "";
      url = "";
      synopsis = "A library for number theoretic computations, written in Haskell.";
      description = "This is a toy library that implements number theoretic functions in Z, Z mod m, the Gaussian Integers, some combinatorics functions, and functions for manipulating continued fractions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
          ];
        buildable = true;
        };
      tests = {
        "NumberTheory_Tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
            ];
          buildable = true;
          };
        };
      };
    }