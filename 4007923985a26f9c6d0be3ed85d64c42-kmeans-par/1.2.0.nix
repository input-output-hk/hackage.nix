{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kmeans-par";
          version = "1.2.0";
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
            hsPkgs.split
            hsPkgs.metric
          ];
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