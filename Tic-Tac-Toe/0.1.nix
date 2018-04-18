{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "tic-tac-toe";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "asenov79@students.rowan.edu";
        author = "Hristo Asenov";
        homepage = "http://ecks.homeunix.net";
        url = "";
        synopsis = "Useful if reading \"Why FP matters\" by John Hughes";
        description = "An attempt to implement the minimax algorithm using tic-tac-toe";
        buildType = "Simple";
      };
      components = {
        exes = {
          tic-tac-toe = {
            depends  = [
              hsPkgs.base
              hsPkgs.gtk
              hsPkgs.glade
              hsPkgs.haskell98
            ];
          };
        };
      };
    }