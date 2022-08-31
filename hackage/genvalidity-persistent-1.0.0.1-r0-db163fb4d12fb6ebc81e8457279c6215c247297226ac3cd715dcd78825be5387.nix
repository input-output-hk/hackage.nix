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
      identifier = { name = "genvalidity-persistent"; version = "1.0.0.1"; };
      license = "MIT";
      copyright = "Copyright: (c) 2016-2022 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "GenValidity support for Persistent";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."genvalidity-containers" or (errorHandler.buildDepError "genvalidity-containers"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."validity-containers" or (errorHandler.buildDepError "validity-containers"))
          (hsPkgs."validity-persistent" or (errorHandler.buildDepError "validity-persistent"))
          ];
        buildable = true;
        };
      tests = {
        "genvalidity-persistent-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-persistent" or (errorHandler.buildDepError "genvalidity-persistent"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
            (hsPkgs."validity-containers" or (errorHandler.buildDepError "validity-containers"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "genvalidity-persistent-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."genvalidity-criterion" or (errorHandler.buildDepError "genvalidity-criterion"))
            (hsPkgs."genvalidity-persistent" or (errorHandler.buildDepError "genvalidity-persistent"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
            ];
          buildable = true;
          };
        };
      };
    }