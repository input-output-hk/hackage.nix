{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "vinyl";
          version = "0.4.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jon@jonmsterling.com";
        author = "Jonathan Sterling";
        homepage = "";
        url = "";
        synopsis = "Extensible Records";
        description = "Extensible records for Haskell with lenses using modern GHC features.";
        buildType = "Simple";
      };
      components = {
        vinyl = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.template-haskell
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.lens
              hsPkgs.vinyl
              hsPkgs.doctest
              hsPkgs.singletons
            ];
          };
        };
        benchmarks = {
          bench-builder-all = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.criterion
              hsPkgs.vinyl
              hsPkgs.mwc-random
              hsPkgs.lens
              hsPkgs.linear
            ];
          };
        };
      };
    }