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
      identifier = { name = "attoparsec-ip"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2018 (c) Local Cooking Inc.";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/attoparsec-ip#readme";
      url = "";
      synopsis = "Parse IP data types with attoparsec";
      description = "Please see the README on GitHub at <https://github.com/githubuser/purescript-iso#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "purescript-iso-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."attoparsec-ip" or (errorHandler.buildDepError "attoparsec-ip"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }