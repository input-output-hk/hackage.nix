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
    flags = { curses = false; vty = false; std = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Allure"; version = "0.4.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
      author = "Andres Loeh, Mikolaj Konarski and others";
      homepage = "http://github.com/Mikolaj/Allure";
      url = "";
      synopsis = "Near-future roguelike game in early development";
      description = "This is an alpha pre-release of Allure of the Stars,\na near-future Sci-Fi roguelike and tactical squad game.\nLong term goals are high replayability and auto-balancing\nthrough procedural content generation and persistent content\nmodification based on player behaviour.\n\nThe game is based (for the time being, as a fork)\non the LambdaHack roguelike game engine available\nat <http://hackage.haskell.org/package/Allure>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Allure" = {
          depends = [
            (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ] ++ (if flags.curses
            then [
              (hsPkgs."hscurses" or (errorHandler.buildDepError "hscurses"))
            ]
            else if flags.vty
              then [ (hsPkgs."vty" or (errorHandler.buildDepError "vty")) ]
              else pkgs.lib.optional (!flags.std) (hsPkgs."gtk" or (errorHandler.buildDepError "gtk")));
          libs = pkgs.lib.optional (flags.curses) (pkgs."curses" or (errorHandler.sysDepError "curses"));
          buildable = true;
        };
        "BotAllure" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
    };
  }