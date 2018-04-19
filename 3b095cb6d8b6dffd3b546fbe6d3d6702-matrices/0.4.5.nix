{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "matrices";
          version = "0.4.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015-2017 Kai Zhang";
        maintainer = "kai@kzhang.org";
        author = "Kai Zhang";
        homepage = "";
        url = "";
        synopsis = "native matrix based on vector";
        description = "Pure Haskell matrix library, supporting creating, indexing,\nand modifying dense/sparse matrices.";
        buildType = "Simple";
      };
      components = {
        matrices = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.vector
            hsPkgs.primitive
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.matrices
              hsPkgs.vector
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
            ];
          };
        };
        benchmarks = {
          benchmarks = {
            depends  = [
              hsPkgs.base
              hsPkgs.matrices
              hsPkgs.vector
              hsPkgs.criterion
            ];
          };
        };
      };
    }