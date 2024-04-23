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
      identifier = { name = "circular-enum"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2023 Mirko Westermeier";
      maintainer = "mirko@westermeier.de";
      author = "Mirko Westermeier";
      homepage = "https://github.com/memowe/circular-enum";
      url = "";
      synopsis = "Make bounded enum types circular";
      description = "Circular successor & predecessor for bounded enum types";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "circular-enum-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."circular-enum" or (errorHandler.buildDepError "circular-enum"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }