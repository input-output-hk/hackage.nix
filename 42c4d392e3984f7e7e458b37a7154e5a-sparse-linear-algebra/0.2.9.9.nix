{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dump = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sparse-linear-algebra";
          version = "0.2.9.9";
        };
        license = "GPL-3.0-only";
        copyright = "2016-2017 Marco Zocca";
        maintainer = "zocca.marco gmail";
        author = "Marco Zocca";
        homepage = "https://github.com/ocramz/sparse-linear-algebra";
        url = "";
        synopsis = "Numerical computing in native Haskell";
        description = "/Overview/\n\nThe @sparse-linear-algebra@ library provides iterative linear solvers, matrix decompositions, eigenvalue algorithms and related utilities. The user interface is provided by the top-level module \"Numeric.LinearAlgebra.Sparse\":\n\n@\nimport           Numeric.LinearAlgebra.Sparse\n@\n\nPlease refer to the README file for usage examples.\n";
        buildType = "Simple";
      };
      components = {
        "sparse-linear-algebra" = {
          depends  = [
            hsPkgs.base
            hsPkgs.primitive
            hsPkgs.containers
            hsPkgs.vector
            hsPkgs.vector-algorithms
            hsPkgs.exceptions
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.QuickCheck
            hsPkgs.hspec
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.mtl
              hsPkgs.exceptions
              hsPkgs.mwc-random
              hsPkgs.primitive
              hsPkgs.sparse-linear-algebra
              hsPkgs.scientific
              hsPkgs.matrix-market-attoparsec
            ];
          };
        };
      };
    }