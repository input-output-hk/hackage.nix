{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      unsafeindices = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.20";
        identifier = {
          name = "easytensor";
          version = "0.3.0.0";
        };
        license = "MIT";
        copyright = "(c) Artem Chirkin";
        maintainer = "chirkin@arch.ethz.ch";
        author = "Artem Chirkin";
        homepage = "https://github.com/achirkin/easytensor#readme";
        url = "";
        synopsis = "Pure, type-indexed haskell vector, matrix, and tensor library.";
        description = "Pure, type-indexed haskell vector, matrix, and tensor library.\nFeatures dimensionality type-checking for all operations.\nGeneric n-dimensional versions are implemented using low-level prim ops.\nAllows ad-hoc replacement with fixed low-dimensionality vectors and matrices without changing user interface.";
        buildType = "Simple";
      };
      components = {
        "easytensor" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.dimensions
          ] ++ pkgs.lib.optional (compiler.isGhcjs && true) hsPkgs.ghcjs-base;
        };
        tests = {
          "et-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.QuickCheck
              hsPkgs.easytensor
              hsPkgs.dimensions
            ];
          };
        };
        benchmarks = {
          "et-bench-misc" = {
            depends  = [
              hsPkgs.base
              hsPkgs.easytensor
              hsPkgs.dimensions
            ];
          };
          "et-bench-spfolds" = {
            depends  = [
              hsPkgs.base
              hsPkgs.easytensor
              hsPkgs.dimensions
              hsPkgs.time
            ];
          };
        };
      };
    }