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
      identifier = { name = "cursor-fuzzy-time-gen"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2017-2021 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/fuzzy-time";
      url = "";
      synopsis = "";
      description = "Generators for the fuzzy time cursors";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cursor-fuzzy-time" or (errorHandler.buildDepError "cursor-fuzzy-time"))
          (hsPkgs."cursor-gen" or (errorHandler.buildDepError "cursor-gen"))
          (hsPkgs."fuzzy-time-gen" or (errorHandler.buildDepError "fuzzy-time-gen"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."genvalidity-time" or (errorHandler.buildDepError "genvalidity-time"))
          ];
        buildable = true;
        };
      tests = {
        "cursor-fuzzy-time-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cursor-fuzzy-time" or (errorHandler.buildDepError "cursor-fuzzy-time"))
            (hsPkgs."cursor-fuzzy-time-gen" or (errorHandler.buildDepError "cursor-fuzzy-time-gen"))
            (hsPkgs."fuzzy-time" or (errorHandler.buildDepError "fuzzy-time"))
            (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-hspec-optics" or (errorHandler.buildDepError "genvalidity-hspec-optics"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "cursor-fuzzy-time-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."cursor-fuzzy-time" or (errorHandler.buildDepError "cursor-fuzzy-time"))
            (hsPkgs."cursor-fuzzy-time-gen" or (errorHandler.buildDepError "cursor-fuzzy-time-gen"))
            (hsPkgs."genvalidity-criterion" or (errorHandler.buildDepError "genvalidity-criterion"))
            ];
          buildable = true;
          };
        };
      };
    }