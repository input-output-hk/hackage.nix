{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "GeBoP";
          version = "1.7.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Maarten Löffler <loffler@cs.uu.nl>";
        author = "Maarten Löffler";
        homepage = "http://www.haskell.org/haskellwiki/GeBoP";
        url = "";
        synopsis = "Several games";
        description = "The games: Ataxx, Bamp, Halma, Hez, Kram, Nim, Reversi, TicTacToe, and Zenix";
        buildType = "Simple";
      };
      components = {
        exes = {
          gebop = {
            depends  = [
              hsPkgs.base
              hsPkgs.wxcore
              hsPkgs.wx
              hsPkgs.haskell98
              hsPkgs.directory
            ];
          };
        };
      };
    }