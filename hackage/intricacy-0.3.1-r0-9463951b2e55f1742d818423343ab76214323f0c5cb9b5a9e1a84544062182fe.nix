let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { sdl = true; curses = true; game = true; server = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "intricacy"; version = "0.3.1"; };
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
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."network-fancy" or (buildDepError "network-fancy"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            ] ++ (pkgs.lib).optionals (flags.sdl) [
            (hsPkgs."SDL" or (buildDepError "SDL"))
            (hsPkgs."SDL-ttf" or (buildDepError "SDL-ttf"))
            (hsPkgs."SDL-gfx" or (buildDepError "SDL-gfx"))
            ]) ++ (pkgs.lib).optional (flags.curses) (hsPkgs."hscurses" or (buildDepError "hscurses"));
          libs = (pkgs.lib).optionals (flags.game) ((pkgs.lib).optionals (flags.sdl) ((pkgs.lib).optionals (system.isWindows) [
            (pkgs."SDL_ttf" or (sysDepError "SDL_ttf"))
            (pkgs."SDL" or (sysDepError "SDL"))
            (pkgs."SDL_gfx" or (sysDepError "SDL_gfx"))
            (pkgs."freetype" or (sysDepError "freetype"))
            ]));
          buildable = if flags.game then true else false;
          };
        "intricacy-server" = {
          depends = (pkgs.lib).optionals (flags.server) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."network-fancy" or (buildDepError "network-fancy"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            ];
          buildable = if flags.server then true else false;
          };
        };
      };
    }