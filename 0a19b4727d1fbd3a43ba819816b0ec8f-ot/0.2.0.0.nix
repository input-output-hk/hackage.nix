{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ot";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tim@timbaumann.info";
        author = "Tim Baumann";
        homepage = "https://github.com/operational-transformation/ot.hs";
        url = "";
        synopsis = "Real-time collaborative editing with Operational Transformation";
        description = "";
        buildType = "Simple";
      };
      components = {
        "ot" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.QuickCheck
            hsPkgs.binary
            hsPkgs.either
            hsPkgs.mtl
            hsPkgs.ghc
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.ot
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.binary
            ];
          };
        };
      };
    }