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
      specVersion = "1.0";
      identifier = { name = "TimePiece"; version = "0.0.5"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang";
      homepage = "";
      url = "";
      synopsis = "A simple tile-based digital clock screen saver";
      description = "A simple tile-based digital clock screen saver";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
          (hsPkgs."SDL-image" or (errorHandler.buildDepError "SDL-image"))
          (hsPkgs."SDL-ttf" or (errorHandler.buildDepError "SDL-ttf"))
          (hsPkgs."SDL-gfx" or (errorHandler.buildDepError "SDL-gfx"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
        buildable = true;
        };
      exes = {
        "TimePiece" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."SDL-image" or (errorHandler.buildDepError "SDL-image"))
            (hsPkgs."SDL-ttf" or (errorHandler.buildDepError "SDL-ttf"))
            (hsPkgs."SDL-gfx" or (errorHandler.buildDepError "SDL-gfx"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            ];
          buildable = true;
          };
        };
      };
    }