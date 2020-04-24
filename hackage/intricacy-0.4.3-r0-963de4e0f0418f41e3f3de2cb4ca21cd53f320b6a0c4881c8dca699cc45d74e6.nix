{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      game = true;
      sdl = true;
      sound = true;
      curses = true;
      server = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "intricacy"; version = "0.4.3"; };
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
          depends = ((pkgs.lib).optionals (flags.game) ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."network-fancy" or ((hsPkgs.pkgs-errors).buildDepError "network-fancy"))
            (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            ] ++ (pkgs.lib).optionals (flags.sdl) ([
            (hsPkgs."SDL" or ((hsPkgs.pkgs-errors).buildDepError "SDL"))
            (hsPkgs."SDL-ttf" or ((hsPkgs.pkgs-errors).buildDepError "SDL-ttf"))
            (hsPkgs."SDL-gfx" or ((hsPkgs.pkgs-errors).buildDepError "SDL-gfx"))
            ] ++ (pkgs.lib).optionals (flags.sound) [
            (hsPkgs."SDL-mixer" or ((hsPkgs.pkgs-errors).buildDepError "SDL-mixer"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ])) ++ (pkgs.lib).optional (flags.curses) (hsPkgs."hscurses" or ((hsPkgs.pkgs-errors).buildDepError "hscurses"))) ++ (pkgs.lib).optionals (!flags.sdl) ((pkgs.lib).optional (!flags.curses) (hsPkgs."Unsatisfiable" or ((hsPkgs.pkgs-errors).buildDepError "Unsatisfiable")));
          libs = (pkgs.lib).optionals (flags.game) ((pkgs.lib).optionals (flags.sdl) ((pkgs.lib).optionals (system.isWindows) ([
            (pkgs."SDL_ttf" or ((hsPkgs.pkgs-errors).sysDepError "SDL_ttf"))
            (pkgs."SDL" or ((hsPkgs.pkgs-errors).sysDepError "SDL"))
            (pkgs."SDL_gfx" or ((hsPkgs.pkgs-errors).sysDepError "SDL_gfx"))
            (pkgs."freetype" or ((hsPkgs.pkgs-errors).sysDepError "freetype"))
            ] ++ (pkgs.lib).optional (flags.sound) (pkgs."SDL_mixer" or ((hsPkgs.pkgs-errors).sysDepError "SDL_mixer")))));
          buildable = (if flags.game then true else false) && (if flags.sdl
            then true
            else if flags.curses then true else false);
          };
        "intricacy-server" = {
          depends = (pkgs.lib).optionals (flags.server) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."network-fancy" or ((hsPkgs.pkgs-errors).buildDepError "network-fancy"))
            (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            ];
          buildable = if flags.server then true else false;
          };
        };
      };
    }