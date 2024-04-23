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
    flags = { curses = false; vty = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "Allure"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
      author = "Andres Loeh, Mikolaj Konarski and others";
      homepage = "http://github.com/Mikolaj/Allure";
      url = "";
      synopsis = "Near-future roguelike game in early development";
      description = "This is an alpha prerelease of Allure of the Stars,\na near-future Sci-Fi roguelike and tactical squad game.\nLong term goals are high replayability and auto-balancing\nthrough procedural content generation and persistent content\nmodification based on player behaviour.\nThe game is based on the LambdaHack roguelike game engine,";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Allure" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ] ++ (if flags.curses
            then [
              (hsPkgs."hscurses" or (errorHandler.buildDepError "hscurses"))
            ]
            else if flags.vty
              then [ (hsPkgs."vty" or (errorHandler.buildDepError "vty")) ]
              else [ (hsPkgs."gtk" or (errorHandler.buildDepError "gtk")) ]);
          libs = pkgs.lib.optional (flags.curses) (pkgs."curses" or (errorHandler.sysDepError "curses"));
          buildable = true;
        };
      };
    };
  }