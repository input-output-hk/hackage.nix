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
      identifier = { name = "folds-common"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jozefg@cmu.edu";
      author = "Danny Gratzer";
      homepage = "";
      url = "";
      synopsis = "A playground of common folds for folds";
      description = "In an effort to make @folds@ a more usable package this\npackage provides a battery of common folds. These can be\nplugged together easily and efficiently to cover many\ncommon usages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."folds" or (errorHandler.buildDepError "folds"))
          ];
        buildable = true;
        };
      tests = {
        "left-properties" = {
          depends = [
            (hsPkgs."folds-common" or (errorHandler.buildDepError "folds-common"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "monoid-properties" = {
          depends = [
            (hsPkgs."folds-common" or (errorHandler.buildDepError "folds-common"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "right-properties" = {
          depends = [
            (hsPkgs."folds-common" or (errorHandler.buildDepError "folds-common"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }