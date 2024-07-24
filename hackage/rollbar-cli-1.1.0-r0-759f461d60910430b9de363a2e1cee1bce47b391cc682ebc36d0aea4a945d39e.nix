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
      identifier = { name = "rollbar-cli"; version = "1.1.0"; };
      license = "MIT";
      copyright = "2020-present Stack Builders Inc.";
      maintainer = "David Mazarro <dmunuera@stackbuilders.com>";
      author = "Stack Builders Inc.";
      homepage = "https://github.com/stackbuilders/rollbar-haskell#readme";
      url = "";
      synopsis = "Simple CLI tool to perform commons tasks such as tracking deploys.";
      description = "Please see the README on GitHub at\n<https://github.com/stackbuilders/rollbar-haskell/tree/master/rollbar-cli>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."rollbar-client" or (errorHandler.buildDepError "rollbar-client"))
        ];
        buildable = true;
      };
      exes = {
        "rollbar" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rollbar-cli" or (errorHandler.buildDepError "rollbar-cli"))
            (hsPkgs."rollbar-client" or (errorHandler.buildDepError "rollbar-client"))
          ];
          buildable = true;
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rollbar-cli" or (errorHandler.buildDepError "rollbar-cli"))
          ];
          buildable = true;
        };
      };
    };
  }