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
      identifier = { name = "genvalidity-uuid"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2017 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "GenValidity support for UUID";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
          (hsPkgs."validity-uuid" or (errorHandler.buildDepError "validity-uuid"))
          ];
        buildable = true;
        };
      tests = {
        "genvalidity-uuid-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-uuid" or (errorHandler.buildDepError "genvalidity-uuid"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            ];
          buildable = true;
          };
        };
      };
    }