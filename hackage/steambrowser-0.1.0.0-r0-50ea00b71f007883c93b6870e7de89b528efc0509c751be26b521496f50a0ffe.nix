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
      identifier = { name = "steambrowser"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "hherman1@macalester.edu";
      author = "Hunter";
      homepage = "";
      url = "";
      synopsis = "List and launch steam games from the cli";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "steambrowser" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }