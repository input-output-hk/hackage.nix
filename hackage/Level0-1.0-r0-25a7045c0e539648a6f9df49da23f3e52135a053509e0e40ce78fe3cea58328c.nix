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
      specVersion = "1.8";
      identifier = { name = "Level0"; version = "1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "eleventynine@gmail.com";
      author = "Mike Ledger";
      homepage = "http://quasimal.com/projects/level_0.html";
      url = "";
      synopsis = "A Snake II clone written using SDL.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Level0" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."SDL-ttf" or (errorHandler.buildDepError "SDL-ttf"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }