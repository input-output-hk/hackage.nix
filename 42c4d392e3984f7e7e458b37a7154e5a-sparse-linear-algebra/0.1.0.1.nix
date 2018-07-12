{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sparse-linear-algebra";
          version = "0.1.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "2016 Marco Zocca";
        maintainer = "zocca.marco gmail";
        author = "Marco Zocca";
        homepage = "https://github.com/ocramz/sparse-linear-algebra";
        url = "";
        synopsis = "Sparse linear algebra datastructures and algorithms. Currently it provides iterative linear solvers, matrix decompositions, eigenvalue computations and related utilities.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "sparse-linear-algebra" = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.hspec
            hsPkgs.primitive
            hsPkgs.mtl
            hsPkgs.mwc-random
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.mtl
              hsPkgs.mwc-random
              hsPkgs.primitive
              hsPkgs.sparse-linear-algebra
              hsPkgs.criterion
            ];
          };
        };
      };
    }