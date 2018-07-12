{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "identifiers";
          version = "0.2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "awagner83@gmail.com";
        author = "Adam Wagner";
        homepage = "";
        url = "";
        synopsis = "Numeric identifiers for values.";
        description = "Useful for situations where repeated-storage requirements\nof values become too costly.";
        buildType = "Simple";
      };
      components = {
        "identifiers" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          "main" = {
            depends  = [
              hsPkgs.base
              hsPkgs.identifiers
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
        benchmarks = {
          "bench-builder-all" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.binary
              hsPkgs.cereal
              hsPkgs.deepseq
              hsPkgs.bytestring
              hsPkgs.identifiers
            ];
          };
        };
      };
    }