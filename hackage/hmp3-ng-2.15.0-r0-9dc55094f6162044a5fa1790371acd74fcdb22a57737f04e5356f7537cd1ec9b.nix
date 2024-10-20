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
      specVersion = "2.2";
      identifier = { name = "hmp3-ng"; version = "2.15.0"; };
      license = "GPL-2.0-or-later";
      copyright = "";
      maintainer = "Galen Huntington";
      author = "Don Stewart, Galen Huntington";
      homepage = "https://github.com/galenhuntington/hmp3-ng#readme";
      url = "";
      synopsis = "A 2019 fork of an ncurses mp3 player written in Haskell";
      description = "An mp3 player with a curses frontend.  Playlists are populated by\npassing file and directory names on the command line.  'h' displays\nhelp.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hmp3" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hscurses" or (errorHandler.buildDepError "hscurses"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
          libs = [ (pkgs."ncursesw" or (errorHandler.sysDepError "ncursesw")) ];
          buildable = true;
        };
      };
    };
  }