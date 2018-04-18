{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      demo = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gridland";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "https://github.com/jxv";
        author = "Joe Vargas";
        homepage = "";
        url = "";
        synopsis = "Grid-based multimedia engine";
        description = "Learn Haskell by drawing sprites and playing music and sound effects.";
        buildType = "Simple";
      };
      components = {
        gridland = {
          depends  = [
            hsPkgs.base
            hsPkgs.SDL
            hsPkgs.SDL-image
            hsPkgs.SDL-mixer
            hsPkgs.SDL-gfx
            hsPkgs.astar
            hsPkgs.containers
            hsPkgs.tuple
            hsPkgs.random
            hsPkgs.grid
            hsPkgs.htiled
            hsPkgs.vector
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.safe
          ];
        };
        exes = {
          demo = {
            depends  = optionals _flags.demo [
              hsPkgs.base
              hsPkgs.gridland
            ];
          };
        };
      };
    }