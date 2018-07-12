{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "matrices";
          version = "0.4.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015,2016 Kai Zhang";
        maintainer = "kai@kzhang.org";
        author = "Kai Zhang";
        homepage = "";
        url = "";
        synopsis = "native matrix based on vector";
        description = "This library provide the APIs for creating, indexing,\nmodifying matrices (2d arrays), including dense and\nsparse representations. The underling data\nstructure is vector.";
        buildType = "Simple";
      };
      components = {
        "matrices" = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.vector
            hsPkgs.primitive
          ];
        };
        tests = {
          "test" = {
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
          "benchmarks" = {
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