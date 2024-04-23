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
      identifier = { name = "coverage"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "(c) 2015 Nicolas Del Piano";
      maintainer = "Nicolas Del Piano <ndel314@gmail.com>";
      author = "Nicolas Del Piano <ndel314@gmail.com>";
      homepage = "https://github.com/nicodelpiano/coverage";
      url = "";
      synopsis = "Exhaustivity Checking Library";
      description = "A library for exhaustivity and redundancy checking.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."coverage" or (errorHandler.buildDepError "coverage"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }