{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      curses = false;
      vty = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "LambdaHack";
          version = "0.1.20110918";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andres Loeh <mail@andres-loeh.de>";
        author = "Andres Loeh, Mikolaj Konarski";
        homepage = "http://github.com/kosmikus/LambdaHack";
        url = "";
        synopsis = "A roguelike game engine in early development";
        description = "This is an alpha release of LambdaHack, a roguelike game engine\npackaged together with a small example roguelike game\n(not yet well separated; this is future work,\ntogether with improving the AI monad EDSL,\nso that the rules for synthesising monster behaviour\nfrom game content are more readable and easier to debug).\n\nAnother game using this engine is Allure of the Stars\nat <http://hackage.haskell.org/package/Allure>.";
        buildType = "Simple";
      };
      components = {
        exes = {
          LambdaHack = {
            depends  = ([
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.binary
              hsPkgs.random
              hsPkgs.zlib
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.old-time
              hsPkgs.ConfigFile
              hsPkgs.MissingH
              hsPkgs.filepath
            ] ++ [
              hsPkgs.template-haskell
            ]) ++ (if _flags.curses
              then [ hsPkgs.hscurses ]
              else if _flags.vty
                then [ hsPkgs.vty ]
                else [ hsPkgs.gtk ]);
            libs = pkgs.lib.optional _flags.curses pkgs.curses;
          };
        };
      };
    }