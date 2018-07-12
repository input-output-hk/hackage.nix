{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cereal-io-streams";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Soostone Inc";
        maintainer = "michael.xavier@soostone.com";
        author = "Michael Xavier";
        homepage = "";
        url = "";
        synopsis = "io-streams support for the cereal binary serialization library";
        description = "io-streams support for the cereal binary serialization library\n";
        buildType = "Simple";
      };
      components = {
        "cereal-io-streams" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.io-streams
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.cereal-io-streams
              hsPkgs.cereal
              hsPkgs.bytestring
              hsPkgs.io-streams
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.derive
              hsPkgs.base
              hsPkgs.mtl
            ];
          };
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cereal-io-streams
              hsPkgs.criterion
              hsPkgs.io-streams
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.cereal-conduit
              hsPkgs.conduit
              hsPkgs.conduit-extra
            ];
          };
        };
      };
    }