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
      identifier = { name = "date-conversions"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "2017";
      maintainer = "jclayton@thoughtbot.com";
      author = "Josh Clayton";
      homepage = "https://github.com/thoughtbot/date-conversions#readme";
      url = "";
      synopsis = "Date conversions";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."dates" or (errorHandler.buildDepError "dates"))
        ];
        buildable = true;
      };
      tests = {
        "date-conversions-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."date-conversions" or (errorHandler.buildDepError "date-conversions"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."dates" or (errorHandler.buildDepError "dates"))
          ];
          buildable = true;
        };
      };
    };
  }