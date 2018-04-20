{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10.0";
        identifier = {
          name = "LinguisticsTypes";
          version = "0.0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Christian Hoener zu Siederdissen, 2015-2017";
        maintainer = "choener@bioinf.uni-leipzig.de";
        author = "Christian Hoener zu Siederdissen, 2015-2017";
        homepage = "https://github.com/choener/LinguisticsTypes";
        url = "";
        synopsis = "Collection of types for natural language";
        description = "Types used for natural language applications. Includes an\ninternalized text type, @BTI@ which represents internalized\n@Text@ values with @Int@s.";
        buildType = "Simple";
      };
      components = {
        LinguisticsTypes = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.cereal-text
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.intern
            hsPkgs.log-domain
            hsPkgs.QuickCheck
            hsPkgs.string-conversions
            hsPkgs.text
            hsPkgs.text-binary
            hsPkgs.utf8-string
            hsPkgs.vector-th-unbox
            hsPkgs.bimaps
          ];
        };
        tests = {
          properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.binary
              hsPkgs.cereal
              hsPkgs.QuickCheck
              hsPkgs.string-conversions
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
              hsPkgs.LinguisticsTypes
            ];
          };
        };
        benchmarks = {
          BenchmarkBuilder = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.text
              hsPkgs.LinguisticsTypes
            ];
          };
        };
      };
    }