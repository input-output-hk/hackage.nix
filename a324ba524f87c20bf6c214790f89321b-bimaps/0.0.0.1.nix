{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      benchmark = false;
      llvm = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bimaps";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Christian Hoener zu Siederdissen, 2014 - 2015";
        maintainer = "choener@bioinf.uni-leipzig.de";
        author = "Christian Hoener zu Siederdissen";
        homepage = "http://www.bioinf.uni-leipzig.de/~choener/";
        url = "";
        synopsis = "bijections with multiple implementations.";
        description = "Bijections between sets of values.";
        buildType = "Simple";
      };
      components = {
        bimaps = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.binary
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.primitive
            hsPkgs.QuickCheck
            hsPkgs.storable-tuple
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.vector-binary-instances
            hsPkgs.vector-th-unbox
          ];
        };
        exes = {
          BenchmarkBimaps = {
            depends  = pkgs.lib.optionals _flags.benchmark [
              hsPkgs.base
              hsPkgs.bimaps
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.mwc-random
              hsPkgs.vector
            ];
          };
        };
      };
    }