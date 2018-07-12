{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tateti-tateti";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Ezequiel A. Alvarez";
        maintainer = "welcometothechango@gmail.com";
        author = "Ezequiel A. Alvarez";
        homepage = "http://github.com/alvare/tateti-tateti#readme";
        url = "";
        synopsis = "Meta tic-tac-toe ncurses game.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        exes = {
          "tateti-tateti" = {
            depends  = [
              hsPkgs.base
              hsPkgs.ncurses
              hsPkgs.mtl
              hsPkgs.lens-simple
              hsPkgs.array
              hsPkgs.random
            ];
          };
        };
      };
    }