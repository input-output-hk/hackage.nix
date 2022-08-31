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
      specVersion = "1.12";
      identifier = {
        name = "genvalidity-case-insensitive";
        version = "0.0.0.1";
        };
      license = "MIT";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "GenValidity support for case-insensitive";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."validity-case-insensitive" or (errorHandler.buildDepError "validity-case-insensitive"))
          ];
        buildable = true;
        };
      tests = {
        "genvalidity-case-insensitive-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."genvalidity-case-insensitive" or (errorHandler.buildDepError "genvalidity-case-insensitive"))
            (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "genvalidity-case-insensitive-bench" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."genvalidity-case-insensitive" or (errorHandler.buildDepError "genvalidity-case-insensitive"))
            (hsPkgs."genvalidity-criterion" or (errorHandler.buildDepError "genvalidity-criterion"))
            ];
          buildable = true;
          };
        };
      };
    }