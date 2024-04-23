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
      specVersion = "3.0";
      identifier = { name = "roc-id"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Jonathan Knowles";
      maintainer = "mail@jonathanknowles.net";
      author = "Jonathan Knowles";
      homepage = "https://github.com/jonathanknowles/roc-id#readme";
      url = "";
      synopsis = "Implementation of the ROC (Taiwan) National ID standard.";
      description = "This package provides an implementation of the ROC (Taiwan) National\nIdentification Number (中華民國身分證號碼) standard.\n\nIn particular, it provides functions for parsing and validating\nidentification numbers from textual input.\n\nSee the \"ROC.ID\" module to get started.\n\nFor more details of the standard on which this package is based, see:\n\n* https://zh.wikipedia.org/wiki/中華民國國民身分證\n* https://en.wikipedia.org/wiki/National_Identification_Card_(Republic_of_China)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."Only" or (errorHandler.buildDepError "Only"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
        ];
        buildable = true;
      };
      tests = {
        "roc-id-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."Only" or (errorHandler.buildDepError "Only"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
            (hsPkgs."roc-id" or (errorHandler.buildDepError "roc-id"))
          ];
          buildable = true;
        };
      };
    };
  }