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
      identifier = { name = "fuzzySets"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lukas Balog <lukasbalog66@gmail.com>";
      author = "Lukas Balog <lukasbalog66@gmail.com>";
      homepage = "https://github.com/luckyluke66/L-Sets";
      url = "";
      synopsis = "Library for constructing and manipulating fuzzy sets and fuzzy relations.";
      description = "In mathematics Fuzzy Set is a generalization of standart set\nIn set elements can either belong to that set or not.\nWhen it comes to fuzzy sets, elements belong to a fuzzy set in a degree.\nThis package provide functions for working with fuzzy sets and fuzzy relations.";
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