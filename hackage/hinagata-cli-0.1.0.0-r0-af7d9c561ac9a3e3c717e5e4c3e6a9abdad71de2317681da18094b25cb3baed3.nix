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
      specVersion = "3.12";
      identifier = { name = "hinagata-cli"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nadeem@gmail.com";
      author = "Nadeem Bitar";
      homepage = "https://github.com/shinzui/hinagata";
      url = "";
      synopsis = "Fixture planning and PostgreSQL lease commands for Hinagata";
      description = "Plan and load fixtures, prepare reusable baselines, and manage isolated PostgreSQL database leases.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hinagata" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hinagata-core" or (errorHandler.buildDepError "hinagata-core"))
            (hsPkgs."hinagata-postgres" or (errorHandler.buildDepError "hinagata-postgres"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."settei" or (errorHandler.buildDepError "settei"))
            (hsPkgs."settei-env" or (errorHandler.buildDepError "settei-env"))
            (hsPkgs."settei-optparse-applicative" or (errorHandler.buildDepError "settei-optparse-applicative"))
            (hsPkgs."settei-yaml" or (errorHandler.buildDepError "settei-yaml"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
      tests = {
        "hinagata-cli-process-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hinagata-core" or (errorHandler.buildDepError "hinagata-core"))
            (hsPkgs."hinagata-postgres" or (errorHandler.buildDepError "hinagata-postgres"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."settei" or (errorHandler.buildDepError "settei"))
            (hsPkgs."settei-env" or (errorHandler.buildDepError "settei-env"))
            (hsPkgs."settei-optparse-applicative" or (errorHandler.buildDepError "settei-optparse-applicative"))
            (hsPkgs."settei-yaml" or (errorHandler.buildDepError "settei-yaml"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
    };
  }