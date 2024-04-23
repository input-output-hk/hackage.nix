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
      identifier = { name = "skulk"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(C) Ivan Appel 2016";
      maintainer = "ivan.appel@gmail.com";
      author = "Ivan Appel";
      homepage = "http://github.com/geekyfox/skulk";
      url = "";
      synopsis = "Eclectic collection of utility functions";
      description = "Eclectic collection of utility functions";
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
            (hsPkgs."skulk" or (errorHandler.buildDepError "skulk"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }