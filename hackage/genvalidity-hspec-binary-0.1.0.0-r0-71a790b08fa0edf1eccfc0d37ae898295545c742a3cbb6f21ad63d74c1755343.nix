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
      identifier = { name = "genvalidity-hspec-binary"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2017 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Nick Van den Broeck";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Standard spec's for binary-related Instances";
      description = "Standard spec's for cereal-related Instances, see https://hackage.haskell.org/package/binary.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
        buildable = true;
        };
      tests = {
        "genvalidity-hspec-binary-doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."genvalidity-hspec-binary" or (errorHandler.buildDepError "genvalidity-hspec-binary"))
            ];
          buildable = true;
          };
        "genvalidity-hspec-binary-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."genvalidity-hspec-binary" or (errorHandler.buildDepError "genvalidity-hspec-binary"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }