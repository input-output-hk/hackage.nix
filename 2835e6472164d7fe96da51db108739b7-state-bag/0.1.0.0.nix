{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "state-bag";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016 Robin KAY";
        maintainer = "komadori@gekkou.co.uk";
        author = "Robin KAY";
        homepage = "http://www.gekkou.co.uk/software/";
        url = "";
        synopsis = "Monad transformers for holding bags of state.";
        description = "A state monad transformer which can hold multiple different state values\nrepresented in a type-level list.";
        buildType = "Simple";
      };
      components = {
        "state-bag" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.primitive
            hsPkgs.transformers
            hsPkgs.vector
          ];
        };
        tests = {
          "Test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.state-bag
              hsPkgs.transformers
              hsPkgs.hspec
            ];
          };
        };
      };
    }