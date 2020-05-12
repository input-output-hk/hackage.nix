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
      identifier = { name = "hspec-expectations"; version = "0.8.0"; };
      license = "MIT";
      copyright = "(c) 2011-2015 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "https://github.com/hspec/hspec-expectations#readme";
      url = "";
      synopsis = "Catchy combinators for HUnit";
      description = "Catchy combinators for HUnit: <https://github.com/hspec/hspec-expectations#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."call-stack" or (errorHandler.buildDepError "call-stack"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."call-stack" or (errorHandler.buildDepError "call-stack"))
            (hsPkgs."nanospec" or (errorHandler.buildDepError "nanospec"))
            ];
          buildable = true;
          };
        };
      };
    }