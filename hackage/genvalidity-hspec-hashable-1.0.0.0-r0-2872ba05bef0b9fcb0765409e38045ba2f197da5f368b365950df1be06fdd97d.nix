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
        name = "genvalidity-hspec-hashable";
        version = "1.0.0.0";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2016-2021 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Nick Van den Broeck";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Standard spec's for Hashable instances";
      description = "Standard spec's for Hashable instances";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
          (hsPkgs."genvalidity-property" or (errorHandler.buildDepError "genvalidity-property"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
        ];
        buildable = true;
      };
      tests = {
        "genvalidity-hspec-hashable-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-hspec-hashable" or (errorHandler.buildDepError "genvalidity-hspec-hashable"))
            (hsPkgs."genvalidity-property" or (errorHandler.buildDepError "genvalidity-property"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
          ];
          buildable = true;
        };
      };
    };
  }