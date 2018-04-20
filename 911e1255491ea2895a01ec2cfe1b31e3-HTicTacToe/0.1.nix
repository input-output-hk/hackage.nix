{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "HTicTacToe";
          version = "0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "korcan_h@hotmail.com";
        author = "Korcan Hussein";
        homepage = "http://github.com/snkkid/HTicTacToe";
        url = "";
        synopsis = "A tic-tac-toe game.";
        description = "Another tic-tac-toe game in Haskell using the SDL bindings.";
        buildType = "Simple";
      };
      components = {
        exes = {
          HTicTacToe = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.array
              hsPkgs.mtl
              hsPkgs.SDL
              hsPkgs.SDL-image
              hsPkgs.SDL-ttf
            ];
          };
        };
      };
    }