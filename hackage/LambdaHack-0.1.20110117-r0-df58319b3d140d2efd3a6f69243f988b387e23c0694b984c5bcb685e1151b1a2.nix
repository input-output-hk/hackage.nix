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
      specVersion = "1.2";
      identifier = { name = "LambdaHack"; version = "0.1.20110117"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andres Loeh <mail@andres-loeh.de>";
      author = "Andres Loeh <mail@andres-loeh.de>";
      homepage = "";
      url = "";
      synopsis = "a small roguelike game";
      description = "a small roguelike game";
      buildType = "Simple";
      };
    components = {
      exes = {
        "LambdaHack" = {
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
            ] ++ (if flags.curses
            then [
              (hsPkgs."hscurses" or (errorHandler.buildDepError "hscurses"))
              ]
            else if flags.vty
              then [ (hsPkgs."vty" or (errorHandler.buildDepError "vty")) ]
              else [ (hsPkgs."gtk" or (errorHandler.buildDepError "gtk")) ]);
          libs = (pkgs.lib).optional (flags.curses) (pkgs."curses" or (errorHandler.sysDepError "curses"));
          buildable = true;
          };
        };
      };
    }