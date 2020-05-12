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
    flags = { curses = false; gtk = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "LambdaHack"; version = "0.1.20080412"; };
      license = "LicenseRef-GPL";
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
            ] ++ (if flags.curses
            then [
              (hsPkgs."hscurses" or (errorHandler.buildDepError "hscurses"))
              ]
            else if flags.gtk
              then [ (hsPkgs."gtk" or (errorHandler.buildDepError "gtk")) ]
              else [ (hsPkgs."vty" or (errorHandler.buildDepError "vty")) ]);
          libs = (pkgs.lib).optional (flags.curses) (pkgs."curses" or (errorHandler.sysDepError "curses"));
          buildable = true;
          };
        };
      };
    }