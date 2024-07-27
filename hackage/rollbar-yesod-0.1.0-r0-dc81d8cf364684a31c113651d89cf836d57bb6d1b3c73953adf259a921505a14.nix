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
    flags = { example = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "rollbar-yesod"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2020 Stack Builders Inc.";
      maintainer = "Sebastián Estrella <sestrella@stackbuilders.com>";
      author = "Stack Builders Inc.";
      homepage = "https://github.com/stackbuilders/rollbar-haskell#readme";
      url = "";
      synopsis = "Provides error reporting capabilities to Yesod applications through Rollbar API.";
      description = "Please see the README on GitHub at\n<https://github.com/stackbuilders/rollbar-haskell/tree/master/rollbar-yesod>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."rollbar-client" or (errorHandler.buildDepError "rollbar-client"))
          (hsPkgs."rollbar-wai" or (errorHandler.buildDepError "rollbar-wai"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
        ];
        buildable = true;
      };
      exes = {
        "yesod-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rollbar-client" or (errorHandler.buildDepError "rollbar-client"))
            (hsPkgs."rollbar-yesod" or (errorHandler.buildDepError "rollbar-yesod"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          ];
          buildable = if flags.example then true else false;
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."rollbar-client" or (errorHandler.buildDepError "rollbar-client"))
            (hsPkgs."rollbar-yesod" or (errorHandler.buildDepError "rollbar-yesod"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
            (hsPkgs."yesod-test" or (errorHandler.buildDepError "yesod-test"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }