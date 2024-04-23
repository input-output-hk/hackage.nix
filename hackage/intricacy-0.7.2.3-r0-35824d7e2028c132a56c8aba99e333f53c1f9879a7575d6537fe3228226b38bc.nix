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
    flags = {
      game = true;
      sdl = true;
      sound = true;
      curses = true;
      server = false;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "intricacy"; version = "0.7.2.3"; };
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
          depends = pkgs.lib.optionals (!!flags.game) (((([
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
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."RSA" or (errorHandler.buildDepError "RSA"))
            (hsPkgs."crypto-pubkey-types" or (errorHandler.buildDepError "crypto-pubkey-types"))
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ pkgs.lib.optionals (flags.sdl) (([
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."SDL-ttf" or (errorHandler.buildDepError "SDL-ttf"))
            (hsPkgs."SDL-gfx" or (errorHandler.buildDepError "SDL-gfx"))
          ] ++ pkgs.lib.optionals (flags.sound) [
            (hsPkgs."SDL-mixer" or (errorHandler.buildDepError "SDL-mixer"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ]) ++ pkgs.lib.optional (system.isOsx) (hsPkgs."network-fancy" or (errorHandler.buildDepError "network-fancy")))) ++ pkgs.lib.optional (flags.curses) (hsPkgs."hscurses" or (errorHandler.buildDepError "hscurses"))) ++ pkgs.lib.optional (!flags.sdl && !flags.curses) (hsPkgs."base" or (errorHandler.buildDepError "base")));
          libs = pkgs.lib.optionals (!!flags.game) (pkgs.lib.optionals (flags.sdl) (pkgs.lib.optionals (system.isWindows) ([
            (pkgs."SDL_ttf" or (errorHandler.sysDepError "SDL_ttf"))
            (pkgs."SDL" or (errorHandler.sysDepError "SDL"))
            (pkgs."SDL_gfx" or (errorHandler.sysDepError "SDL_gfx"))
            (pkgs."freetype" or (errorHandler.sysDepError "freetype"))
          ] ++ pkgs.lib.optional (flags.sound) (pkgs."SDL_mixer" or (errorHandler.sysDepError "SDL_mixer")))));
          pkgconfig = pkgs.lib.optionals (!!flags.game) (pkgs.lib.optional (flags.curses) (pkgconfPkgs."ncursesw" or (errorHandler.pkgConfDepError "ncursesw")));
          buildable = if !flags.game
            then false
            else if !flags.sdl && !flags.curses then false else true;
        };
        "intricacy-server" = {
          depends = pkgs.lib.optionals (flags.server) ([
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
            (hsPkgs."RSA" or (errorHandler.buildDepError "RSA"))
            (hsPkgs."crypto-pubkey-types" or (errorHandler.buildDepError "crypto-pubkey-types"))
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
            (hsPkgs."email-validate" or (errorHandler.buildDepError "email-validate"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
            (hsPkgs."smtp-mail" or (errorHandler.buildDepError "smtp-mail"))
            (hsPkgs."argon2" or (errorHandler.buildDepError "argon2"))
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups")));
          buildable = if flags.server then true else false;
        };
      };
    };
  }