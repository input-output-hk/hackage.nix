{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sparse-linear-algebra";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Marco Zocca";
        maintainer = "zocca.marco gmail";
        author = "Marco Zocca";
        homepage = "https://github.com/ocramz/sparse-linear-algebra";
        url = "";
        synopsis = "Sparse linear algebra datastructures and algorithms";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        sparse-linear-algebra = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.hspec
            hsPkgs.primitive
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.mwc-random
            hsPkgs.monad-loops
          ];
        };
        exes = {
          sparse-linear-algebra = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.mwc-random
              hsPkgs.primitive
              hsPkgs.sparse-linear-algebra
              hsPkgs.transformers
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.mtl
              hsPkgs.mwc-random
              hsPkgs.primitive
              hsPkgs.sparse-linear-algebra
              hsPkgs.transformers
              hsPkgs.criterion
            ];
          };
        };
      };
    }