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
          name = "Allure";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
        author = "Andres Loeh, Mikolaj Konarski and others";
        homepage = "http://github.com/Mikolaj/Allure";
        url = "";
        synopsis = "Near-future roguelike game in early development";
        description = "This is an alpha prerelease of Allure of the Stars,\na near-future Sci-Fi roguelike and tactical squad game.\nLong term goals are high replayability and auto-balancing\nthrough procedural content generation and persistent content\nmodification based on player behaviour.\nThe game is based on the LambdaHack roguelike game engine,";
        buildType = "Simple";
      };
      components = {
        exes = {
          "Allure" = {
            depends  = [
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
              hsPkgs.template-haskell
            ] ++ (if _flags.curses
              then [ hsPkgs.hscurses ]
              else if _flags.vty
                then [ hsPkgs.vty ]
                else [ hsPkgs.gtk ]);
            libs = pkgs.lib.optional _flags.curses pkgs.curses;
          };
        };
      };
    }