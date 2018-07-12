{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      curses = false;
      vty = false;
      std = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "LambdaHack";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
        author = "Andres Loeh, Mikolaj Konarski";
        homepage = "http://github.com/kosmikus/LambdaHack";
        url = "";
        synopsis = "A roguelike game engine in early and very active development";
        description = "This is an alpha release of LambdaHack,\na game engine library for roguelike games\nof arbitrary theme, size and complexity,\npackaged together with a small example dungeon crawler.\nWhen completed, it will let you specify content\nto be procedurally generated, define the AI behaviour\non top of the generic content-independent rules\nand compile a ready-to-play game binary, using either\nthe supplied or a custom-made main loop.\nSeveral frontends are available (GTK is the default)\nand many other generic engine components are easily overridden,\nbut the fundamental source of flexibility lies\nin the strict and type-safe separation of code and content.\n\nUpcoming new features: improved squad combat,\nplayer action undo/redo, ranged combat animations,\ncompletely redesigned UI. Long term goals are focused\naround procedural content generation and include\nthe improvement of the AI monad EDSL, so that rules\nfor synthesising monster behaviour from game content\nare extensible, readable and easy to debug,\nin-game content creation, auto-balancing and persistent\ncontent modification based on player behaviour.\n\nA larger game that depends on the LambdaHack library\nis Allure of the Stars, available from\n<http://hackage.haskell.org/package/Allure>.";
        buildType = "Simple";
      };
      components = {
        "LambdaHack" = {
          depends  = [
            hsPkgs.ConfigFile
            hsPkgs.array
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.old-time
            hsPkgs.random
            hsPkgs.zlib
          ] ++ (if _flags.curses
            then [ hsPkgs.hscurses ]
            else if _flags.vty
              then [ hsPkgs.vty ]
              else pkgs.lib.optional (!_flags.std) hsPkgs.gtk);
        };
        exes = {
          "LambdaHack" = {
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
              hsPkgs.mtl
              hsPkgs.old-time
              hsPkgs.random
              hsPkgs.zlib
            ];
          };
          "DumbBot" = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
            ];
          };
        };
      };
    }