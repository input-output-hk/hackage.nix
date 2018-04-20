{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hoodie";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "denis.volk@gmail.com";
        author = "Denis Volk";
        homepage = "";
        url = "";
        synopsis = "A small, toy roguelike";
        description = "A small roguelike; perhaps 10% of a real one. In development";
        buildType = "Simple";
      };
      components = {
        exes = {
          hoodie = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.monad-loops
              hsPkgs.astar
              hsPkgs.ncurses
              hsPkgs.hfov
            ];
          };
        };
      };
    }