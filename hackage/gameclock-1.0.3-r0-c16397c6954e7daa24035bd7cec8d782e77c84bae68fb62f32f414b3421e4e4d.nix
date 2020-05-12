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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "gameclock"; version = "1.0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "quuxman@gmail.com";
      author = "Abram Clark <quuxman@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Game clock that shows two analog clock faces";
      description = "A game clock with optional Fischer time, two clock face styles, and other options";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hsclock" = {
          depends = [
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = true;
          };
        };
      };
    }