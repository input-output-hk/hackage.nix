{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      gtk = false;
      vty = false;
      curses = false;
      std = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "LambdaHack";
          version = "0.2.6.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
        author = "Andres Loeh, Mikolaj Konarski";
        homepage = "http://github.com/kosmikus/LambdaHack";
        url = "";
        synopsis = "A roguelike game engine in early and active development";
        description = "This is an alpha release of LambdaHack,\na game engine library for roguelike games\nof arbitrary theme, size and complexity,\npackaged together with a small example dungeon crawler.\nWhen completed, the engine will let you specify content\nto be procedurally generated, define the AI behaviour\non top of the generic content-independent rules\nand compile a ready-to-play game binary, using either\nthe supplied or a custom-made main loop.\nSeveral frontends are available (GTK is the default)\nand many other generic engine components are easily overridden,\nbut the fundamental source of flexibility lies\nin the strict and type-safe separation of code and content.\n\nThis is a minor release, primarily intended to fix broken\nhaddock documentation on Hackage by disabling gtk2hs dependency\nunder GHC 7.6.1 (if you use GHC 7.6.1 and gtk2hs compiles\nfor you, please run 'cabal install -fgtk --reinstall').\nChanges since 0.2.6 are mostly unrelated to gameplay:\nstrictly typed config files split into UI and rules;\na switch from Text to String throughout the codebase;\nuse of the external library 'miniutter' for English sentence\ngeneration.\n\nUpcoming new features: playable monsters faction, more than\ntwo factions inhabiting the dungeon, AIvAI, PvP, improved\nranged combat AI, dynamic light sources, explosions\nplayer action undo/redo, completely redesigned UI. Long term\ngoals are focused around procedural content generation\nand include in-game content creation, auto-balancing\nand persistent content modification based on player behaviour.\n\nA larger game that depends on the LambdaHack library\nis Allure of the Stars, available from\n<http://hackage.haskell.org/package/Allure>.\n\nNote: All modules in the library are kept visible,\nto let games override each, but reuse as many as possible.\nOTOH, to reflect that some modules are implementation details\nrelative to others, the source code adheres to the following\nconvention. If a module has the same name as a directory,\nthe module is the exclusive interface to the directory.\nNo references to the modules in the directory are allowed\nexcept from the interface module.";
        buildType = "Simple";
      };
      components = {
        LambdaHack = {
          depends  = [
            hsPkgs.ConfigFile
            hsPkgs.array
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.miniutter
            hsPkgs.mtl
            hsPkgs.old-time
            hsPkgs.random
            hsPkgs.text
            hsPkgs.zlib
          ] ++ (if _flags.gtk
            then [ hsPkgs.gtk ]
            else if _flags.vty
              then [ hsPkgs.vty ]
              else if _flags.curses
                then [ hsPkgs.hscurses ]
                else pkgs.lib.optional (!(_flags.std || compiler.isGhc)) hsPkgs.gtk);
        };
        exes = {
          LambdaHack = {
            depends  = [
              hsPkgs.LambdaHack
              hsPkgs.template-haskell
              hsPkgs.ConfigFile
              hsPkgs.array
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.miniutter
              hsPkgs.mtl
              hsPkgs.old-time
              hsPkgs.random
              hsPkgs.text
              hsPkgs.zlib
            ];
          };
          DumbBot = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
            ];
          };
        };
      };
    }