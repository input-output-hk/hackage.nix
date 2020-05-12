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
      identifier = { name = "HUnit-approx"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Richard Eisenberg <eir@cis.upenn.edu>";
      author = "Richard Eisenberg <eir@cis.upenn.edu>";
      homepage = "https://github.com/goldfirere/HUnit-approx";
      url = "";
      synopsis = "Approximate equality for floating point numbers with HUnit";
      description = "This package exports combinators useful in comparing floating-point numbers\nin HUnit tests, by using approximate equality.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
        buildable = true;
        };
      tests = {
        "sanity-check" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."HUnit-approx" or (errorHandler.buildDepError "HUnit-approx"))
            ];
          buildable = true;
          };
        };
      };
    }