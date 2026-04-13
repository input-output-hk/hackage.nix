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
      specVersion = "2.4";
      identifier = { name = "fuzzySets"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lukas Balog <lukasbalog66@gmail.com>";
      author = "Lukas Balog <lukasbalog66@gmail.com>";
      homepage = "https://github.com/luckyluke66/L-Sets";
      url = "";
      synopsis = "A Haskell library for working with fuzzy sets and fuzzy relations.";
      description = "In classical set theory, an element either belongs to a set or it does not.\nFuzzy sets generalize this idea by allowing graded membership.\nThis package provides tools for constructing and manipulating fuzzy sets\nand fuzzy relations.\nIf you are new to the library, the \"Fuzzy.Tutorial\" module is the best\nplace to start before diving into the reference documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."fuzzySets" or (errorHandler.buildDepError "fuzzySets"))
          ];
          buildable = true;
        };
      };
    };
  }