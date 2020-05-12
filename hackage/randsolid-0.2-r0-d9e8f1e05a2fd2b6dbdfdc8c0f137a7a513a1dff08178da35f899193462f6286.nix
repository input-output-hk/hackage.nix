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
      specVersion = "1.2";
      identifier = { name = "randsolid"; version = "0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "w+randsolid@antiklimax.se";
      author = "Johannes Martinsson";
      homepage = "";
      url = "";
      synopsis = "Set the background of your root window to a random colour.";
      description = "Set the background of your root window to a random colour (or just print the colour).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "randsolid" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }