{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kmeans-par";
          version = "1.5.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "me@vikramverma.com";
        author = "vi";
        homepage = "";
        url = "";
        synopsis = "Sequential and parallel implementations of Lloyd's algorithm.";
        description = "";
        buildType = "Simple";
      };
      components = {
        kmeans-par = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.semigroups
            hsPkgs.parallel
            hsPkgs.metric
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.normaldistribution
              hsPkgs.metric
              hsPkgs.parallel
              hsPkgs.semigroups
              hsPkgs.vector
              hsPkgs.QuickCheck
            ];
          };
        };
        benchmarks = {
          kmeans-benchmark = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.criterion
              hsPkgs.normaldistribution
              hsPkgs.kmeans-par
              hsPkgs.deepseq
              hsPkgs.vector
              hsPkgs.metric
            ];
          };
        };
      };
    }