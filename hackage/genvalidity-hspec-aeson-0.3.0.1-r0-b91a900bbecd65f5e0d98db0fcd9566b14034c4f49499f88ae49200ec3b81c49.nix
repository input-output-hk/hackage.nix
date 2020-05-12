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
      identifier = { name = "genvalidity-hspec-aeson"; version = "0.3.0.1"; };
      license = "MIT";
      copyright = "Copyright: (c) 2016-2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com,\nnick.van.den.broeck666@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "http://cs-syd.eu";
      url = "";
      synopsis = "Standard spec's for aeson-related instances";
      description = "Standard spec's for aeson-related Instances";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
        buildable = true;
        };
      tests = {
        "genvalidity-hspec-aeson-doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."genvalidity-hspec-aeson" or (errorHandler.buildDepError "genvalidity-hspec-aeson"))
            (hsPkgs."genvalidity-property" or (errorHandler.buildDepError "genvalidity-property"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
            ];
          buildable = true;
          };
        "genvalidity-hspec-aeson-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."genvalidity-aeson" or (errorHandler.buildDepError "genvalidity-aeson"))
            (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-hspec-aeson" or (errorHandler.buildDepError "genvalidity-hspec-aeson"))
            (hsPkgs."genvalidity-property" or (errorHandler.buildDepError "genvalidity-property"))
            (hsPkgs."genvalidity-text" or (errorHandler.buildDepError "genvalidity-text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
            ];
          buildable = true;
          };
        };
      };
    }