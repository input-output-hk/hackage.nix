{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Monaris";
          version = "0.1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "fumiexcel@gmail.com";
        author = "Fumiaki Kinishota";
        homepage = "https://github.com/fumieval/Monaris/";
        url = "";
        synopsis = "A simple tetris clone";
        description = "A tetris clone written Haskell.";
        buildType = "Simple";
      };
      components = {
        exes = {
          Monaris = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.array
              hsPkgs.vect
              hsPkgs.containers
              hsPkgs.free
              hsPkgs.directory
              hsPkgs.free-game
            ];
          };
        };
      };
    }