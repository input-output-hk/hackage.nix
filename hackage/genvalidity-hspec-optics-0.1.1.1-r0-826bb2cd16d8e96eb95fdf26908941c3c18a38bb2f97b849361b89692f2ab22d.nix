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
      identifier = { name = "genvalidity-hspec-optics"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "Copyright: (c) 2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com,\nnick.van.den.broeck666@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "http://cs-syd.eu";
      url = "";
      synopsis = "Standard spec's for optics";
      description = "Standard spec's for optics";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          ];
        buildable = true;
        };
      tests = {
        "genvalidity-hspec-optics-doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."genvalidity-hspec-optics" or (errorHandler.buildDepError "genvalidity-hspec-optics"))
            (hsPkgs."genvalidity-property" or (errorHandler.buildDepError "genvalidity-property"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
            ];
          buildable = true;
          };
        "genvalidity-hspec-optics-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-hspec-optics" or (errorHandler.buildDepError "genvalidity-hspec-optics"))
            (hsPkgs."genvalidity-property" or (errorHandler.buildDepError "genvalidity-property"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
            ];
          buildable = true;
          };
        };
      };
    }