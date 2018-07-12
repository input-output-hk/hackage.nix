{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      curses = false;
      gtk = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "LambdaHack";
          version = "0.1.20080412";
        };
        license = "LicenseRef-GPL";
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
            ] ++ (if _flags.curses
              then [ hsPkgs.hscurses ]
              else if _flags.gtk
                then [ hsPkgs.gtk ]
                else [ hsPkgs.vty ]);
            libs = pkgs.lib.optional _flags.curses pkgs.curses;
          };
        };
      };
    }