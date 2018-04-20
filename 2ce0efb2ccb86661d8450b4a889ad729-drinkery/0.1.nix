{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "drinkery";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2017 Fumiaki Kinoshita";
        maintainer = "fumiexcel@gmail.com";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/drinkery#readme";
        url = "";
        synopsis = "Boozy streaming library";
        description = "<https://www.schoolofhaskell.com/user/fumieval/drinkery-the-boozy-streaming-library drinkery the boozy streaming library>";
        buildType = "Simple";
      };
      components = {
        drinkery = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
          ];
        };
        benchmarks = {
          benchmark = {
            depends  = [
              hsPkgs.base
              hsPkgs.drinkery
              hsPkgs.gauge
              hsPkgs.pipes
              hsPkgs.machines
              hsPkgs.conduit
              hsPkgs.conduit-combinators
              hsPkgs.list-t
              hsPkgs.ListT
            ];
          };
        };
      };
    }