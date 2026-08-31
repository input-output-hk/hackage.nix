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
      identifier = { name = "kioku-cli"; version = "0.5.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Nadeem Bitar";
      maintainer = "nadeem@gmail.com";
      author = "Nadeem Bitar";
      homepage = "https://github.com/shinzui/kioku";
      url = "";
      synopsis = "kioku command-line interface";
      description = "Command-line entry point for kioku demos and operational commands.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
          (hsPkgs."kioku-api" or (errorHandler.buildDepError "kioku-api"))
          (hsPkgs."kioku-core" or (errorHandler.buildDepError "kioku-core"))
          (hsPkgs."kiroku-store" or (errorHandler.buildDepError "kiroku-store"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      exes = {
        "kioku" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."kioku-cli" or (errorHandler.buildDepError "kioku-cli"))
          ];
          buildable = true;
        };
      };
      tests = {
        "kioku-cli-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
            (hsPkgs."kioku-api" or (errorHandler.buildDepError "kioku-api"))
            (hsPkgs."kioku-cli" or (errorHandler.buildDepError "kioku-cli"))
            (hsPkgs."kioku-core" or (errorHandler.buildDepError "kioku-core"))
            (hsPkgs."kioku-migrations".components.sublibs.test-support or (errorHandler.buildDepError "kioku-migrations:test-support"))
            (hsPkgs."kiroku-store" or (errorHandler.buildDepError "kiroku-store"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.kioku-cli.components.exes.kioku or (pkgs.pkgsBuildBuild.kioku or (errorHandler.buildToolDepError "kioku-cli:kioku")))
          ];
          buildable = true;
        };
      };
    };
  }