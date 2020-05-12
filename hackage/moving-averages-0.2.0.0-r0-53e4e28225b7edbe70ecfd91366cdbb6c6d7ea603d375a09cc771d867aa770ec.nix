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
      identifier = { name = "moving-averages"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2017";
      maintainer = "sayhi@joshuaclayton.me";
      author = "Josh Clayton";
      homepage = "https://github.com/joshuaclayton/moving-averages#readme";
      url = "";
      synopsis = "This is a library for calculating moving averages on lists of numbers.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "moving-averages-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."moving-averages" or (errorHandler.buildDepError "moving-averages"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }