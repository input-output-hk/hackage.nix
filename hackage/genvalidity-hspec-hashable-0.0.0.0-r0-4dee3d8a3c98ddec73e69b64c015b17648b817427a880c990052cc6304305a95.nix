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
      identifier = {
        name = "genvalidity-hspec-hashable";
        version = "0.0.0.0";
        };
      license = "MIT";
      copyright = "2017 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Nick Van den Broeck";
      homepage = "https://github.com/NorfairKing/validity";
      url = "";
      synopsis = "Standard spec's for Hashable instances";
      description = "Standard spec's for Hashable instances";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
          (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."genvalidity-property" or (errorHandler.buildDepError "genvalidity-property"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      tests = {
        "genvalidity-hspec-hashable-doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."genvalidity-hspec-hashable" or (errorHandler.buildDepError "genvalidity-hspec-hashable"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "genvalidity-hspec-hashable-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-hspec-hashable" or (errorHandler.buildDepError "genvalidity-hspec-hashable"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }