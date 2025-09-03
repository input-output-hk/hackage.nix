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
      sdl2 = true;
      embed = true;
      sound = true;
      sdl1 = false;
      curses = false;
      server = false;
      sendmail = true;
    };
    package = {
      specVersion = "2.2";
      identifier = { name = "intricacy"; version = "0.9.0.0"; };
      license = "GPL-3.0-or-later";
      copyright = "";
      maintainer = "mbays@sdf.org";
      author = "Martin Bays";
      homepage = "http://mbays.freeshell.org/intricacy";
      url = "";
      synopsis = "A game of competitive puzzle-design";
      description = "A lockpicking-themed turn-based puzzle game on a hex grid. A series of\npreset puzzles serves as an extended single-player introduction, after\nwhich players enter a multi-player game with a client-server architecture,\nin which players design puzzles (locks) and solve those designed by\nothers. A metagame encourages the design of maximally difficult puzzles,\nwithin tight size constraints. The client supports Curses and SDL, with\nall graphics in SDL mode drawn by code using SDL-gfx. The network protocol\nis based on the 'binary' package, and is intended to be reasonably\nefficient. TVars are used to give transparent local caching and background\nnetwork operations. Also incorporates an implementation of a graph\n5-colouring algorithm (see GraphColouring.hs).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "intricacy" = {
          depends = pkgs.lib.optionals (!(!flags.game || !flags.sdl1 && !flags.sdl2 && !flags.curses)) (((([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ pkgs.lib.optionals (flags.sdl1) ([
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."SDL-ttf" or (errorHandler.buildDepError "SDL-ttf"))
            (hsPkgs."SDL-gfx" or (errorHandler.buildDepError "SDL-gfx"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ] ++ pkgs.lib.optional (flags.sound) (hsPkgs."SDL-mixer" or (errorHandler.buildDepError "SDL-mixer")))) ++ pkgs.lib.optionals (flags.sdl2 && !flags.sdl1 && !flags.curses) (([
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."sdl2-ttf" or (errorHandler.buildDepError "sdl2-ttf"))
            (hsPkgs."sdl2-gfx" or (errorHandler.buildDepError "sdl2-gfx"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ] ++ pkgs.lib.optional (flags.sound) (hsPkgs."sdl2-mixer" or (errorHandler.buildDepError "sdl2-mixer"))) ++ pkgs.lib.optional (flags.embed) (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed")))) ++ pkgs.lib.optional (flags.curses) (hsPkgs."hscurses" or (errorHandler.buildDepError "hscurses")));
          libs = pkgs.lib.optionals (!(!flags.game || !flags.sdl1 && !flags.sdl2 && !flags.curses)) (pkgs.lib.optionals (flags.sdl1) (pkgs.lib.optionals (system.isWindows) ([
            (pkgs."SDL_ttf" or (errorHandler.sysDepError "SDL_ttf"))
            (pkgs."SDL" or (errorHandler.sysDepError "SDL"))
            (pkgs."SDL_gfx" or (errorHandler.sysDepError "SDL_gfx"))
            (pkgs."freetype" or (errorHandler.sysDepError "freetype"))
          ] ++ pkgs.lib.optional (flags.sound) (pkgs."SDL_mixer" or (errorHandler.sysDepError "SDL_mixer")))) ++ pkgs.lib.optionals (flags.sdl2 && !flags.sdl1 && !flags.curses) (pkgs.lib.optionals (system.isWindows) ([
            (pkgs."SDL2_ttf" or (errorHandler.sysDepError "SDL2_ttf"))
            (pkgs."SDL2" or (errorHandler.sysDepError "SDL2"))
            (pkgs."SDL2_gfx" or (errorHandler.sysDepError "SDL2_gfx"))
            (pkgs."freetype" or (errorHandler.sysDepError "freetype"))
          ] ++ pkgs.lib.optional (flags.sound) (pkgs."SDL2_mixer" or (errorHandler.sysDepError "SDL2_mixer")))));
          pkgconfig = pkgs.lib.optionals (!(!flags.game || !flags.sdl1 && !flags.sdl2 && !flags.curses)) (pkgs.lib.optional (flags.curses) (pkgconfPkgs."ncursesw" or (errorHandler.pkgConfDepError "ncursesw")));
          buildable = if !flags.game || !flags.sdl1 && !flags.sdl2 && !flags.curses
            then false
            else true;
        };
        "intricacy-server" = {
          depends = pkgs.lib.optionals (flags.server) (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."network-fancy" or (errorHandler.buildDepError "network-fancy"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
            (hsPkgs."email-validate" or (errorHandler.buildDepError "email-validate"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
            (hsPkgs."mime-mail" or (errorHandler.buildDepError "mime-mail"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            (hsPkgs."argon2" or (errorHandler.buildDepError "argon2"))
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ pkgs.lib.optional (flags.sendmail) (hsPkgs."smtp-mail" or (errorHandler.buildDepError "smtp-mail")));
          buildable = if flags.server then true else false;
        };
      };
    };
  }