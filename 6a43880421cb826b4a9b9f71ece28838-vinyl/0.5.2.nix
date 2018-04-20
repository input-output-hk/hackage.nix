{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "vinyl";
          version = "0.5.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jonsterling@me.com";
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
          equality = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.vinyl
            ];
          };
        };
      };
    }