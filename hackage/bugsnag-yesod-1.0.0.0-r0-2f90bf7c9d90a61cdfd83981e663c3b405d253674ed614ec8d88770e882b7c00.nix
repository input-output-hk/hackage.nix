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
    flags = { examples = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "bugsnag-yesod"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "pbrisbin@gmail.com";
      author = "Patrick Brisbin";
      homepage = "https://github.com/pbrisbin/bugsnag-haskell#readme";
      url = "";
      synopsis = "Yesod integration for Bugsnag error reporting for Haskell";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bugsnag" or (errorHandler.buildDepError "bugsnag"))
          (hsPkgs."bugsnag-wai" or (errorHandler.buildDepError "bugsnag-wai"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
        ];
        buildable = true;
      };
      exes = {
        "example-warp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bugsnag" or (errorHandler.buildDepError "bugsnag"))
            (hsPkgs."bugsnag-yesod" or (errorHandler.buildDepError "bugsnag-yesod"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          ];
          buildable = if !flags.examples then false else true;
        };
      };
    };
  }