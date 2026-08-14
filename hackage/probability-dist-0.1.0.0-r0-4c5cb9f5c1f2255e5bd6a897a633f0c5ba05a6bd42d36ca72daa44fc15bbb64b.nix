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
      specVersion = "3.0";
      identifier = { name = "probability-dist"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "barisbaris2005@gmail.com";
      author = "BARIŞ BARIŞ";
      homepage = "";
      url = "";
      synopsis = "Probability distributions in Haskell";
      description = "A Haskell library providing discrete and continuous probability\ndistributions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "probability-dist-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."probability-dist" or (errorHandler.buildDepError "probability-dist"))
          ];
          buildable = true;
        };
      };
    };
  }