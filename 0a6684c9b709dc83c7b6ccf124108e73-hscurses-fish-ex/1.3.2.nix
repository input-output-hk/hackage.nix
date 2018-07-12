{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hscurses-fish-ex";
          version = "1.3.2";
        };
        license = "ISC";
        copyright = "2010-2018 Dino Morelli";
        maintainer = "Dino Morelli <dino@ui3.info>";
        author = "Dino Morelli";
        homepage = "http://hub.darcs.net/dino/hscurses-fish-ex";
        url = "";
        synopsis = "hscurses swimming fish example";
        description = "Simple curses aquarium written to learn about\nthe hscurses library.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "hscurses-fish-ex" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hscurses
              hsPkgs.random
              hsPkgs.safe
              hsPkgs.unix
            ];
          };
        };
      };
    }