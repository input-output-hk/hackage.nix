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
      specVersion = "1.10";
      identifier = { name = "enumerate-function"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Spiros Boosalis";
      maintainer = "samboosalis@gmail.com";
      author = "Spiros Boosalis";
      homepage = "http://github.com/sboosali/enumerate-function#readme";
      url = "";
      synopsis = "simple package for inverting functions and testing totality, via brute enumeration of the domain";
      description = "\nsee the \"Enumerate.Function\" module for examples for documentation.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."enumerate" or (errorHandler.buildDepError "enumerate"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."MemoTrie" or (errorHandler.buildDepError "MemoTrie"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      exes = {
        "example-enumerate-function" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."enumerate-function" or (errorHandler.buildDepError "enumerate-function"))
            ];
          buildable = true;
          };
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."enumerate-function" or (errorHandler.buildDepError "enumerate-function"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        "unittest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."enumerate-function" or (errorHandler.buildDepError "enumerate-function"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "command" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."enumerate-function" or (errorHandler.buildDepError "enumerate-function"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          buildable = true;
          };
        };
      };
    }