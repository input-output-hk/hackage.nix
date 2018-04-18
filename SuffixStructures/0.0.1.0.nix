{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      llvm = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "SuffixStructures";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Christian Hoener zu Siederdissen, 2014 - 2015";
        maintainer = "choener@bioinf.uni-leipzig.de";
        author = "Christian Hoener zu Siederdissen";
        homepage = "http://www.bioinf.uni-leipzig.de/~choener/";
        url = "";
        synopsis = "Suffix array construction";
        description = "Suffix array construction in Haskell. Currently, only a naive\nmethod is provided. More advanced construction methods might\nfollow.";
        buildType = "Simple";
      };
      components = {
        SuffixStructures = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.data-default-class
            hsPkgs.ListLike
            hsPkgs.primitive
            hsPkgs.vector
            hsPkgs.vector-algorithms
            hsPkgs.vector-binary-instances
          ];
        };
        exes = {
          mkesa = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.SuffixStructures
              hsPkgs.aeson
              hsPkgs.binary
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.vector
            ];
          };
        };
        benchmarks = {
          BenchmarkSuffixStructures = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cmdargs
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.mwc-random
              hsPkgs.SuffixStructures
              hsPkgs.vector
            ];
          };
        };
      };
    }