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
      identifier = { name = "LTS"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "©2020 Ajay Kumar Eeralla";
      maintainer = "aeeralla@galois.com";
      author = "Ajay Kumar Eeralla";
      homepage = "";
      url = "";
      synopsis = "LTS: Labelled Transition System";
      description = "This is an implementation of labelled transition system and\nfollow the README for information on importing and getting started.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
          ];
        buildable = true;
        };
      exes = {
        "LTS" = {
          depends = [
            (hsPkgs."LTS" or (errorHandler.buildDepError "LTS"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      tests = {
        "lts-tests" = {
          depends = [
            (hsPkgs."LTS" or (errorHandler.buildDepError "LTS"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "lts-bench" = {
          depends = [
            (hsPkgs."LTS" or (errorHandler.buildDepError "LTS"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }