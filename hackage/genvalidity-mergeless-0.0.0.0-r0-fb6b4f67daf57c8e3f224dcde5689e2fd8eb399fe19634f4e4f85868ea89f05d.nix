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
      identifier = { name = "genvalidity-mergeless"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/mergeless#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/NorfairKing/mergeless#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."genvalidity-containers" or (errorHandler.buildDepError "genvalidity-containers"))
          (hsPkgs."genvalidity-time" or (errorHandler.buildDepError "genvalidity-time"))
          (hsPkgs."mergeless" or (errorHandler.buildDepError "mergeless"))
          ];
        buildable = true;
        };
      tests = {
        "genvalidity-mergeless-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-hspec-aeson" or (errorHandler.buildDepError "genvalidity-hspec-aeson"))
            (hsPkgs."genvalidity-mergeless" or (errorHandler.buildDepError "genvalidity-mergeless"))
            (hsPkgs."genvalidity-typed-uuid" or (errorHandler.buildDepError "genvalidity-typed-uuid"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mergeless" or (errorHandler.buildDepError "mergeless"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."typed-uuid" or (errorHandler.buildDepError "typed-uuid"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            ];
          buildable = true;
          };
        };
      };
    }