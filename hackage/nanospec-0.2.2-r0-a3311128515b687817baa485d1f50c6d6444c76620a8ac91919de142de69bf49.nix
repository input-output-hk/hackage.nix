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
      identifier = { name = "nanospec"; version = "0.2.2"; };
      license = "MIT";
      copyright = "(c) 2012-2018 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "https://github.com/hspec/nanospec#readme";
      url = "";
      synopsis = "A lightweight implementation of a subset of Hspec's API";
      description = "A lightweight implementation of a subset of Hspec's API with minimal dependencies.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
          ];
          buildable = true;
        };
      };
    };
  }