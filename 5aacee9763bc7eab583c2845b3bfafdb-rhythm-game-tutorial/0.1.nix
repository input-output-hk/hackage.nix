{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rhythm-game-tutorial";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012-2013 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/rhythm-game-tutorial";
        url = "";
        synopsis = "Haskell rhythm game tutorial";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          music-only = {
            depends  = [
              hsPkgs.base
              hsPkgs.call
              hsPkgs.objective
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.split
            ];
          };
          tutorial-passive = {
            depends  = [
              hsPkgs.base
              hsPkgs.call
              hsPkgs.objective
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.split
            ];
          };
          tutorial-active = {
            depends  = [
              hsPkgs.base
              hsPkgs.call
              hsPkgs.objective
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.split
            ];
          };
          tutorial-extended = {
            depends  = [
              hsPkgs.base
              hsPkgs.call
              hsPkgs.objective
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.split
            ];
          };
        };
      };
    }