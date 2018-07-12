{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bimaps";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Christian Hoener zu Siederdissen, 2014 - 2016";
        maintainer = "choener@bioinf.uni-leipzig.de";
        author = "Christian Hoener zu Siederdissen";
        homepage = "https://github.com/choener/bimaps";
        url = "";
        synopsis = "bijections with multiple implementations.";
        description = "Bijections between sets of values.";
        buildType = "Simple";
      };
      components = {
        "bimaps" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.binary
            hsPkgs.cereal
            hsPkgs.cereal-vector
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.primitive
            hsPkgs.storable-tuple
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.vector-binary-instances
            hsPkgs.vector-th-unbox
          ];
        };
        tests = {
          "properties" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bimaps
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
            ];
          };
        };
        benchmarks = {
          "BenchmarkBimaps" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bimaps
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.mwc-random
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
        };
      };
    }