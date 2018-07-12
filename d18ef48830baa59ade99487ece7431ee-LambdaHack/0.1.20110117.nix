{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      curses = false;
      vty = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "LambdaHack";
          version = "0.1.20110117";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andres Loeh <mail@andres-loeh.de>";
        author = "Andres Loeh <mail@andres-loeh.de>";
        homepage = "";
        url = "";
        synopsis = "a small roguelike game";
        description = "a small roguelike game";
        buildType = "Simple";
      };
      components = {
        exes = {
          "LambdaHack" = {
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