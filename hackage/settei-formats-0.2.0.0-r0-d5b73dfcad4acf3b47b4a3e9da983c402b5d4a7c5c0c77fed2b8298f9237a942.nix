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
      specVersion = "3.8";
      identifier = { name = "settei-formats"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "shinzui";
      author = "shinzui";
      homepage = "https://github.com/shinzui/settei";
      url = "";
      synopsis = "Tagged multi-format configuration loading for Settei";
      description = "Parse tagged FORMAT:PATH configuration inputs and load them through the\nSettei YAML, KDL, and Dhall adapters with one shared dispatcher, so\nmulti-format applications stop hand-rolling the same reader and loader.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."settei" or (errorHandler.buildDepError "settei"))
          (hsPkgs."settei-dhall" or (errorHandler.buildDepError "settei-dhall"))
          (hsPkgs."settei-kdl" or (errorHandler.buildDepError "settei-kdl"))
          (hsPkgs."settei-optparse-applicative" or (errorHandler.buildDepError "settei-optparse-applicative"))
          (hsPkgs."settei-yaml" or (errorHandler.buildDepError "settei-yaml"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "settei-formats-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."settei" or (errorHandler.buildDepError "settei"))
            (hsPkgs."settei-dhall" or (errorHandler.buildDepError "settei-dhall"))
            (hsPkgs."settei-formats" or (errorHandler.buildDepError "settei-formats"))
            (hsPkgs."settei-kdl" or (errorHandler.buildDepError "settei-kdl"))
            (hsPkgs."settei-yaml" or (errorHandler.buildDepError "settei-yaml"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }