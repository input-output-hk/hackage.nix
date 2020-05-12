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
      identifier = { name = "genvalidity-aeson"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2017-2019 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com,\nnick.van.den.broeck666@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "GenValidity support for aeson";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."genvalidity-scientific" or (errorHandler.buildDepError "genvalidity-scientific"))
          (hsPkgs."genvalidity-text" or (errorHandler.buildDepError "genvalidity-text"))
          (hsPkgs."genvalidity-unordered-containers" or (errorHandler.buildDepError "genvalidity-unordered-containers"))
          (hsPkgs."genvalidity-vector" or (errorHandler.buildDepError "genvalidity-vector"))
          (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
          (hsPkgs."validity-aeson" or (errorHandler.buildDepError "validity-aeson"))
          ];
        buildable = true;
        };
      tests = {
        "genvalidity-aeson-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."genvalidity-aeson" or (errorHandler.buildDepError "genvalidity-aeson"))
            (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }