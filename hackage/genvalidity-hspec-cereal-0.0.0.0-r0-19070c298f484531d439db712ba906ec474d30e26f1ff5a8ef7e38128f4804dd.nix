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
      identifier = { name = "genvalidity-hspec-cereal"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2016 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "http://cs-syd.eu";
      url = "";
      synopsis = "Standard spec's for cereal-related instances";
      description = "Standard spec's for cereal-related Instances";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      tests = {
        "genvalidity-hspec-cereal-doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."genvalidity-hspec-cereal" or (errorHandler.buildDepError "genvalidity-hspec-cereal"))
            ];
          buildable = true;
          };
        "genvalidity-hspec-cereal-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."genvalidity-hspec-cereal" or (errorHandler.buildDepError "genvalidity-hspec-cereal"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }