{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      vty = false;
      curses = false;
      gtk = false;
      sdl = false;
      jsaddle = false;
      with_expensive_assertions = false;
      release = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "LambdaHack";
          version = "0.8.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
        author = "Andres Loeh, Mikolaj Konarski";
        homepage = "https://lambdahack.github.io";
        url = "";
        synopsis = "A game engine library for tactical squad ASCII roguelike dungeon crawlers";
        description = "LambdaHack is a Haskell game engine library for ASCII roguelike\ngames of arbitrary theme, size and complexity, with optional\ntactical squad combat. It's packaged together with a sample\ndungeon crawler in fantasy setting that can be tried out\nin the browser: <http://lambdahack.github.io>\n(It runs fastest on Chrome. Keyboard commands and savefiles\nare supported only on recent enough versions of browsers.\nMouse should work everywhere.)\n\nPlease see the changelog file for recent improvements\nand the issue tracker for short-term plans. Long term goals\ninclude multiplayer tactical squad combat, in-game content\ncreation, auto-balancing and persistent content modification\nbased on player behaviour. Contributions are welcome.\n\nGames known to use the LambdaHack library:\n\n* Allure of the Stars, a near-future Sci-Fi game,\n<http://hackage.haskell.org/package/Allure>\n\n* Space Privateers, an adventure game set in far future,\n<http://hackage.haskell.org/package/SpacePrivateers>\n\nNote: All modules in this library are kept visible,\nto let games override and reuse them.\nOTOH, to reflect that some modules are implementation details\nrelative to others, the source code adheres to the following\nconvention. If a module has the same name as a directory,\nthe module is the exclusive interface to the directory.\nNo references to the modules in the directory are allowed\nexcept from the interface module. This policy is only binding\nwhen developing the library --- library users are free\nto access any modules, since the library authors are in\nno position to guess their particular needs.";
        buildType = "Simple";
      };
      components = {
        LambdaHack = {
          depends  = ([
            hsPkgs.assert-failure
            hsPkgs.async
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.enummapset
            hsPkgs.filepath
            hsPkgs.ghc-prim
            hsPkgs.hashable
            hsPkgs.hsini
            hsPkgs.keys
            hsPkgs.miniutter
            hsPkgs.optparse-applicative
            hsPkgs.pretty-show
            hsPkgs.random
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.vector-binary-instances
          ] ++ (if compiler.isGhcjs && true || _flags.jsaddle
            then [ hsPkgs.ghcjs-dom ]
            else if _flags.vty
              then [ hsPkgs.vty ]
              else if _flags.curses
                then [ hsPkgs.hscurses ]
                else if _flags.gtk
                  then [ hsPkgs.gtk3 ]
                  else [
                    hsPkgs.sdl2
                    hsPkgs.sdl2-ttf
                  ])) ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) hsPkgs.zlib;
        };
        exes = {
          LambdaHack = {
            depends  = [
              hsPkgs.LambdaHack
              hsPkgs.template-haskell
              hsPkgs.assert-failure
              hsPkgs.async
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.enummapset
              hsPkgs.filepath
              hsPkgs.ghc-prim
              hsPkgs.hashable
              hsPkgs.hsini
              hsPkgs.keys
              hsPkgs.miniutter
              hsPkgs.optparse-applicative
              hsPkgs.pretty-show
              hsPkgs.random
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.vector-binary-instances
            ] ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) hsPkgs.zlib;
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.LambdaHack
              hsPkgs.template-haskell
              hsPkgs.assert-failure
              hsPkgs.async
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.enummapset
              hsPkgs.filepath
              hsPkgs.ghc-prim
              hsPkgs.hashable
              hsPkgs.hsini
              hsPkgs.keys
              hsPkgs.miniutter
              hsPkgs.optparse-applicative
              hsPkgs.pretty-show
              hsPkgs.random
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.vector-binary-instances
            ] ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) hsPkgs.zlib;
          };
        };
      };
    }