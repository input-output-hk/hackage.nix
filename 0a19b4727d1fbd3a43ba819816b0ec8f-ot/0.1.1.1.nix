{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ot";
          version = "0.1.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tim@timbaumann.info";
        author = "Tim Baumann";
        homepage = "https://github.com/timjb/ot.hs";
        url = "";
        synopsis = "Real-time collaborative editing with Operational Transformation";
        description = "";
        buildType = "Simple";
      };
      components = {
        ot = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.QuickCheck
            hsPkgs.binary
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.ot
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.binary
            ];
          };
        };
      };
    }