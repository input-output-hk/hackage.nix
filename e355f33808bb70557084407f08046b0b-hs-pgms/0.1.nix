{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hs-pgms";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008 Bertram Felgenhauer";
        maintainer = "Bertram Felgenhauer <int-e@gmx.de>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Programmer's Mine Sweeper in Haskell";
        description = "This package allows people to code Minesweeper strategies in Haskell\nand run them in a graphical UI.\nInspired by <http://www.ccs.neu.edu/home/ramsdell/pgms/index.html>.";
        buildType = "Simple";
      };
      components = {
        hs-pgms = {};
        exes = {
          mine = {
            depends  = [
              hsPkgs.base
              hsPkgs.MonadPrompt
              hsPkgs.array
              hsPkgs.mtl
              hsPkgs.random
              hsPkgs.glib
              hsPkgs.gtk
              hsPkgs.directory
            ];
          };
        };
      };
    }