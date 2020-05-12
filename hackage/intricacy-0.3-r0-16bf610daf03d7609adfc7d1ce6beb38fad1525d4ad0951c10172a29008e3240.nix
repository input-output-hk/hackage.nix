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
    flags = { sdl = true; curses = true; game = true; server = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "intricacy"; version = "0.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "mbays@sdf.org";
      author = "Martin Bays";
      homepage = "http://mbays.freeshell.org/intricacy";
      url = "";
      synopsis = "A game of competitive puzzle-design";
      description = "A networked game with client-server architecture. The core game is a\nlockpicking-themed turn-based puzzle game on a hex grid. Players design\npuzzles (locks) and solve those designed by others. A metagame encourages\nthe design of maximally difficult puzzles, within tight size constraints.\nThe client supports Curses and SDL, with all graphics in SDL mode drawn by\ncode using SDL-gfx. The network protocol is based on the 'binary' package,\nand is intended to be reasonably efficient. TVars are used to give\ntransparent local caching and background network operations. Also\nincorporates an implementation of a graph 5-colouring algorithm (see\nGraphColouring.hs).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "intricacy" = {
          depends = (pkgs.lib).optionals (flags.game) ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."network-fancy" or (errorHandler.buildDepError "network-fancy"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            ] ++ (pkgs.lib).optionals (flags.sdl) [
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."SDL-ttf" or (errorHandler.buildDepError "SDL-ttf"))
            (hsPkgs."SDL-gfx" or (errorHandler.buildDepError "SDL-gfx"))
            ]) ++ (pkgs.lib).optional (flags.curses) (hsPkgs."hscurses" or (errorHandler.buildDepError "hscurses"));
          libs = (pkgs.lib).optionals (flags.game) ((pkgs.lib).optionals (flags.sdl) ((pkgs.lib).optionals (system.isWindows) [
            (pkgs."SDL_ttf" or (errorHandler.sysDepError "SDL_ttf"))
            (pkgs."SDL" or (errorHandler.sysDepError "SDL"))
            (pkgs."SDL_gfx" or (errorHandler.sysDepError "SDL_gfx"))
            (pkgs."freetype" or (errorHandler.sysDepError "freetype"))
            ]));
          buildable = if flags.game then true else false;
          };
        "intricacy-server" = {
          depends = (pkgs.lib).optionals (flags.server) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."network-fancy" or (errorHandler.buildDepError "network-fancy"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            ];
          buildable = if flags.server then true else false;
          };
        };
      };
    }