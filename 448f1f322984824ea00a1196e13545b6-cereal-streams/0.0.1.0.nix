{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cereal-streams";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Soostone Inc, Winterland";
        maintainer = "michael.xavier@soostone.com, winterland1989@gmail.com";
        author = "Michael Xavier, Winterland";
        homepage = "";
        url = "";
        synopsis = "Use cereal to encode/decode io-streams.";
        description = "Use cereal to encode/decode io-streams.";
        buildType = "Simple";
      };
      components = {
        cereal-streams = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.io-streams
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.cereal-streams
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
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.cereal-streams
              hsPkgs.criterion
              hsPkgs.io-streams
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.cereal-conduit
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.transformers
            ];
          };
        };
      };
    }